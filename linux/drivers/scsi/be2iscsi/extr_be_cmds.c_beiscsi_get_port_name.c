
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int phys_port; } ;
struct beiscsi_hba {int port_name; TYPE_3__ fw_config; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_ctrl_info {int mbox_lock; int mbox_mem; } ;
struct TYPE_9__ {int status; } ;
struct TYPE_10__ {TYPE_4__ resp_hdr; int req_hdr; } ;
struct TYPE_6__ {int port_names; } ;
struct TYPE_7__ {TYPE_1__ resp; } ;
struct be_cmd_get_port_name {TYPE_5__ h; TYPE_2__ p; } ;


 int BEISCSI_LOG_INIT ;
 int CMD_SUBSYSTEM_COMMON ;
 int EMBED_MBX_MAX_PAYLOAD_SIZE ;
 int KERN_INFO ;
 int OPCODE_COMMON_GET_PORT_NAME ;
 int be_cmd_hdr_prepare (int *,int ,int ,int ) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int,int ) ;
 struct be_cmd_get_port_name* embedded_payload (struct be_mcc_wrb*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int beiscsi_get_port_name(struct be_ctrl_info *ctrl, struct beiscsi_hba *phba)
{
 int ret = 0;
 struct be_mcc_wrb *wrb;
 struct be_cmd_get_port_name *ioctl;

 mutex_lock(&ctrl->mbox_lock);
 wrb = wrb_from_mbox(&ctrl->mbox_mem);
 memset(wrb, 0, sizeof(*wrb));
 ioctl = embedded_payload(wrb);

 be_wrb_hdr_prepare(wrb, sizeof(*ioctl), 1, 0);
 be_cmd_hdr_prepare(&ioctl->h.req_hdr, CMD_SUBSYSTEM_COMMON,
      OPCODE_COMMON_GET_PORT_NAME,
      EMBED_MBX_MAX_PAYLOAD_SIZE);
 ret = be_mbox_notify(ctrl);
 phba->port_name = 0;
 if (!ret) {
  phba->port_name = ioctl->p.resp.port_names >>
      (phba->fw_config.phys_port * 8) & 0xff;
 } else {
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
       "BG_%d : GET_PORT_NAME ret 0x%x status 0x%x\n",
       ret, ioctl->h.resp_hdr.status);
 }

 if (phba->port_name == 0)
  phba->port_name = '?';

 mutex_unlock(&ctrl->mbox_lock);
 return ret;
}
