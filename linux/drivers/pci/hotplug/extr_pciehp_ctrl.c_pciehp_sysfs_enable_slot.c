
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hotplug_slot {int dummy; } ;
struct controller {int state; int request_result; int state_lock; int pending_events; int requester; } ;




 int ENODEV ;


 int PCI_EXP_SLTSTA_PDC ;


 int atomic_read (int *) ;
 int ctrl_err (struct controller*,char*,int ,int) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pciehp_request (struct controller*,int ) ;
 int slot_name (struct controller*) ;
 struct controller* to_ctrl (struct hotplug_slot*) ;
 int wait_event (int ,int) ;

int pciehp_sysfs_enable_slot(struct hotplug_slot *hotplug_slot)
{
 struct controller *ctrl = to_ctrl(hotplug_slot);

 mutex_lock(&ctrl->state_lock);
 switch (ctrl->state) {
 case 132:
 case 131:
  mutex_unlock(&ctrl->state_lock);




  ctrl->request_result = -ENODEV;
  pciehp_request(ctrl, PCI_EXP_SLTSTA_PDC);
  wait_event(ctrl->requester,
      !atomic_read(&ctrl->pending_events));
  return ctrl->request_result;
 case 128:
  ctrl_info(ctrl, "Slot(%s): Already in powering on state\n",
     slot_name(ctrl));
  break;
 case 133:
 case 130:
 case 129:
  ctrl_info(ctrl, "Slot(%s): Already enabled\n",
     slot_name(ctrl));
  break;
 default:
  ctrl_err(ctrl, "Slot(%s): Invalid state %#x\n",
    slot_name(ctrl), ctrl->state);
  break;
 }
 mutex_unlock(&ctrl->state_lock);

 return -ENODEV;
}
