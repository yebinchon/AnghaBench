
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sas_task {struct domain_device* dev; } ;
struct hisi_sas_slot {int idx; struct timer_list internal_abort_timer; struct hisi_sas_port* port; struct hisi_sas_cmd_hdr* cmd_hdr; struct sas_task* task; } ;
struct hisi_sas_port {int id; } ;
struct hisi_sas_cmd_hdr {void* transfer_tags; void* dw7; void* dw1; void* dw0; } ;
struct hisi_hba {int dummy; } ;
struct domain_device {int dummy; } ;


 int CMD_HDR_ABORT_DEVICE_TYPE_OFF ;
 int CMD_HDR_ABORT_FLAG_OFF ;
 int CMD_HDR_ABORT_IPTT_OFF ;
 int CMD_HDR_CMD_OFF ;
 int CMD_HDR_DEV_ID_OFF ;
 int CMD_HDR_PORT_OFF ;
 void* cpu_to_le32 (int) ;
 int dev_is_sata (struct domain_device*) ;
 int hisi_sas_internal_abort_quirk_timeout ;
 scalar_t__ jiffies ;
 int mod_timer (struct timer_list*,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int timer_setup (struct timer_list*,int ,int ) ;

__attribute__((used)) static void prep_abort_v2_hw(struct hisi_hba *hisi_hba,
  struct hisi_sas_slot *slot,
  int device_id, int abort_flag, int tag_to_abort)
{
 struct sas_task *task = slot->task;
 struct domain_device *dev = task->dev;
 struct hisi_sas_cmd_hdr *hdr = slot->cmd_hdr;
 struct hisi_sas_port *port = slot->port;
 struct timer_list *timer = &slot->internal_abort_timer;


 timer_setup(timer, hisi_sas_internal_abort_quirk_timeout, 0);

 mod_timer(timer, jiffies + msecs_to_jiffies(100));


 hdr->dw0 = cpu_to_le32((5 << CMD_HDR_CMD_OFF) |
          (port->id << CMD_HDR_PORT_OFF) |
          (dev_is_sata(dev) <<
    CMD_HDR_ABORT_DEVICE_TYPE_OFF) |
          (abort_flag << CMD_HDR_ABORT_FLAG_OFF));


 hdr->dw1 = cpu_to_le32(device_id << CMD_HDR_DEV_ID_OFF);


 hdr->dw7 = cpu_to_le32(tag_to_abort << CMD_HDR_ABORT_IPTT_OFF);
 hdr->transfer_tags = cpu_to_le32(slot->idx);
}
