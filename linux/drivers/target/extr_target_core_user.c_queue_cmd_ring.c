
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int iov_cnt; int iov_bidi_cnt; int cdb_off; struct iovec* iov; } ;
struct TYPE_3__ {int len_op; scalar_t__ cmd_id; scalar_t__ uflags; scalar_t__ kflags; } ;
struct tcmu_mailbox {int cmd_head; TYPE_2__ req; TYPE_1__ hdr; } ;
struct tcmu_dev {int cmdr_size; size_t data_size; int uio_info; int inflight_queue; int cmd_timer; int cmd_time_out; struct tcmu_mailbox* mb_addr; int qfull_queue; int flags; } ;
struct tcmu_cmd_entry {int cmd_head; TYPE_2__ req; TYPE_1__ hdr; } ;
struct tcmu_cmd {int dbi_cnt; int dbi_cur; int flags; int queue_entry; scalar_t__ cmd_id; struct se_cmd* se_cmd; struct tcmu_dev* tcmu_dev; } ;
struct se_cmd {scalar_t__ data_direction; int se_cmd_flags; int t_task_cdb; int t_bidi_data_nents; int t_bidi_data_sg; int t_data_nents; int t_data_sg; } ;
struct iovec {int dummy; } ;
typedef int sense_reason_t ;


 int CMDR_OFF ;
 scalar_t__ DMA_TO_DEVICE ;
 int SCF_BIDI ;
 int TCMU_CMD_BIT_INFLIGHT ;
 int TCMU_DEV_BIT_BLOCKED ;
 int TCMU_DEV_BIT_BROKEN ;
 int TCMU_OP_CMD ;
 int TCMU_OP_PAD ;
 int TCM_INVALID_CDB_FIELD ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int TCM_LUN_BUSY ;
 int TCM_NO_SENSE ;
 int TCM_OUT_OF_RESOURCES ;
 int UPDATE_HEAD (int,size_t,int) ;
 int WARN_ON (int) ;
 scalar_t__ add_to_qfull_queue (struct tcmu_cmd*) ;
 size_t head_to_end (int,int) ;
 int is_ring_space_avail (struct tcmu_dev*,struct tcmu_cmd*,size_t,size_t) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int memcpy (void*,int ,int ) ;
 int memset (struct tcmu_mailbox*,int ,size_t) ;
 int pr_warn (char*,size_t,size_t,int,size_t) ;
 int scatter_data_area (struct tcmu_dev*,struct tcmu_cmd*,int ,int ,struct iovec**,int*,int) ;
 int scsi_command_size (int ) ;
 int set_bit (int ,int *) ;
 int tcmu_cmd_free_data (struct tcmu_cmd*,int) ;
 size_t tcmu_cmd_get_base_cmd_size (int) ;
 size_t tcmu_cmd_get_cmd_size (struct tcmu_cmd*,size_t) ;
 size_t tcmu_cmd_get_data_length (struct tcmu_cmd*) ;
 int tcmu_cmd_reset_dbi_cur (struct tcmu_cmd*) ;
 int tcmu_flush_dcache_range (struct tcmu_mailbox*,int) ;
 int tcmu_hdr_set_len (int *,size_t) ;
 int tcmu_hdr_set_op (int *,int ) ;
 int tcmu_setup_cmd_timer (struct tcmu_cmd*,int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int uio_event_notify (int *) ;

__attribute__((used)) static int queue_cmd_ring(struct tcmu_cmd *tcmu_cmd, sense_reason_t *scsi_err)
{
 struct tcmu_dev *udev = tcmu_cmd->tcmu_dev;
 struct se_cmd *se_cmd = tcmu_cmd->se_cmd;
 size_t base_command_size, command_size;
 struct tcmu_mailbox *mb;
 struct tcmu_cmd_entry *entry;
 struct iovec *iov;
 int iov_cnt, ret;
 uint32_t cmd_head;
 uint64_t cdb_off;
 bool copy_to_data_area;
 size_t data_length = tcmu_cmd_get_data_length(tcmu_cmd);

 *scsi_err = TCM_NO_SENSE;

 if (test_bit(TCMU_DEV_BIT_BLOCKED, &udev->flags)) {
  *scsi_err = TCM_LUN_BUSY;
  return -1;
 }

 if (test_bit(TCMU_DEV_BIT_BROKEN, &udev->flags)) {
  *scsi_err = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
  return -1;
 }
 base_command_size = tcmu_cmd_get_base_cmd_size(tcmu_cmd->dbi_cnt);
 command_size = tcmu_cmd_get_cmd_size(tcmu_cmd, base_command_size);

 if (!list_empty(&udev->qfull_queue))
  goto queue;

 mb = udev->mb_addr;
 cmd_head = mb->cmd_head % udev->cmdr_size;
 if ((command_size > (udev->cmdr_size / 2)) ||
     data_length > udev->data_size) {
  pr_warn("TCMU: Request of size %zu/%zu is too big for %u/%zu "
   "cmd ring/data area\n", command_size, data_length,
   udev->cmdr_size, udev->data_size);
  *scsi_err = TCM_INVALID_CDB_FIELD;
  return -1;
 }

 if (!is_ring_space_avail(udev, tcmu_cmd, command_size, data_length)) {




  tcmu_cmd_free_data(tcmu_cmd, tcmu_cmd->dbi_cur);
  tcmu_cmd_reset_dbi_cur(tcmu_cmd);
  goto queue;
 }


 if (head_to_end(cmd_head, udev->cmdr_size) < command_size) {
  size_t pad_size = head_to_end(cmd_head, udev->cmdr_size);

  entry = (void *) mb + CMDR_OFF + cmd_head;
  tcmu_hdr_set_op(&entry->hdr.len_op, TCMU_OP_PAD);
  tcmu_hdr_set_len(&entry->hdr.len_op, pad_size);
  entry->hdr.cmd_id = 0;
  entry->hdr.kflags = 0;
  entry->hdr.uflags = 0;
  tcmu_flush_dcache_range(entry, sizeof(*entry));

  UPDATE_HEAD(mb->cmd_head, pad_size, udev->cmdr_size);
  tcmu_flush_dcache_range(mb, sizeof(*mb));

  cmd_head = mb->cmd_head % udev->cmdr_size;
  WARN_ON(cmd_head != 0);
 }

 entry = (void *) mb + CMDR_OFF + cmd_head;
 memset(entry, 0, command_size);
 tcmu_hdr_set_op(&entry->hdr.len_op, TCMU_OP_CMD);


 tcmu_cmd_reset_dbi_cur(tcmu_cmd);
 iov = &entry->req.iov[0];
 iov_cnt = 0;
 copy_to_data_area = (se_cmd->data_direction == DMA_TO_DEVICE
  || se_cmd->se_cmd_flags & SCF_BIDI);
 scatter_data_area(udev, tcmu_cmd, se_cmd->t_data_sg,
     se_cmd->t_data_nents, &iov, &iov_cnt,
     copy_to_data_area);
 entry->req.iov_cnt = iov_cnt;


 iov_cnt = 0;
 if (se_cmd->se_cmd_flags & SCF_BIDI) {
  iov++;
  scatter_data_area(udev, tcmu_cmd, se_cmd->t_bidi_data_sg,
      se_cmd->t_bidi_data_nents, &iov, &iov_cnt,
      0);
 }
 entry->req.iov_bidi_cnt = iov_cnt;

 ret = tcmu_setup_cmd_timer(tcmu_cmd, udev->cmd_time_out,
       &udev->cmd_timer);
 if (ret) {
  tcmu_cmd_free_data(tcmu_cmd, tcmu_cmd->dbi_cnt);

  *scsi_err = TCM_OUT_OF_RESOURCES;
  return -1;
 }
 entry->hdr.cmd_id = tcmu_cmd->cmd_id;





 base_command_size = tcmu_cmd_get_base_cmd_size(entry->req.iov_cnt +
             entry->req.iov_bidi_cnt);
 command_size = tcmu_cmd_get_cmd_size(tcmu_cmd, base_command_size);

 tcmu_hdr_set_len(&entry->hdr.len_op, command_size);


 cdb_off = CMDR_OFF + cmd_head + base_command_size;
 memcpy((void *) mb + cdb_off, se_cmd->t_task_cdb, scsi_command_size(se_cmd->t_task_cdb));
 entry->req.cdb_off = cdb_off;
 tcmu_flush_dcache_range(entry, sizeof(*entry));

 UPDATE_HEAD(mb->cmd_head, command_size, udev->cmdr_size);
 tcmu_flush_dcache_range(mb, sizeof(*mb));

 list_add_tail(&tcmu_cmd->queue_entry, &udev->inflight_queue);
 set_bit(TCMU_CMD_BIT_INFLIGHT, &tcmu_cmd->flags);


 uio_event_notify(&udev->uio_info);

 return 0;

queue:
 if (add_to_qfull_queue(tcmu_cmd)) {
  *scsi_err = TCM_OUT_OF_RESOURCES;
  return -1;
 }

 return 1;
}
