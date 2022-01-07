
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct be_ctrl_info {int mbox_lock; } ;
struct beiscsi_hba {int interface_handle; struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_set_vlan_req {int vlan_priority; int interface_hndl; int hdr; } ;


 int CMD_SUBSYSTEM_ISCSI ;
 int OPCODE_COMMON_ISCSI_NTWK_SET_VLAN ;
 struct be_mcc_wrb* alloc_mcc_wrb (struct beiscsi_hba*,unsigned int*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*,unsigned int) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 struct be_cmd_set_vlan_req* embedded_payload (struct be_mcc_wrb*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int be_cmd_set_vlan(struct beiscsi_hba *phba,
       uint16_t vlan_tag)
{
 unsigned int tag;
 struct be_mcc_wrb *wrb;
 struct be_cmd_set_vlan_req *req;
 struct be_ctrl_info *ctrl = &phba->ctrl;

 if (mutex_lock_interruptible(&ctrl->mbox_lock))
  return 0;
 wrb = alloc_mcc_wrb(phba, &tag);
 if (!wrb) {
  mutex_unlock(&ctrl->mbox_lock);
  return 0;
 }

 req = embedded_payload(wrb);
 be_wrb_hdr_prepare(wrb, sizeof(*wrb), 1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI,
      OPCODE_COMMON_ISCSI_NTWK_SET_VLAN,
      sizeof(*req));

 req->interface_hndl = phba->interface_handle;
 req->vlan_priority = vlan_tag;

 be_mcc_notify(phba, tag);
 mutex_unlock(&ctrl->mbox_lock);

 return tag;
}
