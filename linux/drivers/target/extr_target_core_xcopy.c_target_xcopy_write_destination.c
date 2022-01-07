
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct se_cmd {int se_cmd_flags; int scsi_status; int t_data_nents; int t_data_sg; } ;
struct xcopy_pt_cmd {struct se_cmd se_cmd; int * sense_buffer; int xpt_passthrough_sem; } ;
struct xcopy_op {scalar_t__ op_origin; int xop_data_nents; int xop_data_sg; TYPE_2__* src_pt_cmd; struct xcopy_pt_cmd* dst_pt_cmd; } ;
struct TYPE_3__ {int block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {struct se_cmd se_cmd; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC ;
 unsigned char WRITE_16 ;
 scalar_t__ XCOL_SOURCE_RECV_OP ;
 int init_completion (int *) ;
 struct xcopy_pt_cmd* kzalloc (int,int ) ;
 int memset (unsigned char*,int ,int) ;
 int pr_debug (char*,unsigned long long,int,int) ;
 int pr_err (char*) ;
 int put_unaligned_be32 (int,unsigned char*) ;
 int put_unaligned_be64 (scalar_t__,unsigned char*) ;
 int target_xcopy_issue_pt_cmd (struct xcopy_pt_cmd*) ;
 int target_xcopy_setup_pt_cmd (struct xcopy_pt_cmd*,struct xcopy_op*,struct se_device*,unsigned char*,int,int) ;
 int transport_generic_free_cmd (struct se_cmd*,int ) ;
 int transport_init_se_cmd (struct se_cmd*,int *,int *,int,int ,int ,int *) ;
 int xcopy_pt_sess ;
 int xcopy_pt_tfo ;

__attribute__((used)) static int target_xcopy_write_destination(
 struct se_cmd *ec_cmd,
 struct xcopy_op *xop,
 struct se_device *dst_dev,
 sector_t dst_lba,
 u32 dst_sectors)
{
 struct xcopy_pt_cmd *xpt_cmd;
 struct se_cmd *se_cmd;
 u32 length = (dst_sectors * dst_dev->dev_attrib.block_size);
 int rc;
 unsigned char cdb[16];
 bool remote_port = (xop->op_origin == XCOL_SOURCE_RECV_OP);

 xpt_cmd = kzalloc(sizeof(struct xcopy_pt_cmd), GFP_KERNEL);
 if (!xpt_cmd) {
  pr_err("Unable to allocate xcopy_pt_cmd\n");
  return -ENOMEM;
 }
 init_completion(&xpt_cmd->xpt_passthrough_sem);
 se_cmd = &xpt_cmd->se_cmd;

 memset(&cdb[0], 0, 16);
 cdb[0] = WRITE_16;
 put_unaligned_be64(dst_lba, &cdb[2]);
 put_unaligned_be32(dst_sectors, &cdb[10]);
 pr_debug("XCOPY: Built WRITE_16: LBA: %llu Sectors: %u Length: %u\n",
  (unsigned long long)dst_lba, dst_sectors, length);

 transport_init_se_cmd(se_cmd, &xcopy_pt_tfo, &xcopy_pt_sess, length,
         DMA_TO_DEVICE, 0, &xpt_cmd->sense_buffer[0]);
 xop->dst_pt_cmd = xpt_cmd;

 rc = target_xcopy_setup_pt_cmd(xpt_cmd, xop, dst_dev, &cdb[0],
    remote_port, 0);
 if (rc < 0) {
  struct se_cmd *src_cmd = &xop->src_pt_cmd->se_cmd;
  ec_cmd->scsi_status = xpt_cmd->se_cmd.scsi_status;





  src_cmd->se_cmd_flags &= ~SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC;
  src_cmd->t_data_sg = xop->xop_data_sg;
  src_cmd->t_data_nents = xop->xop_data_nents;

  transport_generic_free_cmd(se_cmd, 0);
  return rc;
 }

 rc = target_xcopy_issue_pt_cmd(xpt_cmd);
 if (rc < 0) {
  ec_cmd->scsi_status = xpt_cmd->se_cmd.scsi_status;
  se_cmd->se_cmd_flags &= ~SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC;
  transport_generic_free_cmd(se_cmd, 0);
  return rc;
 }

 return 0;
}
