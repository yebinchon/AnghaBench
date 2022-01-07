
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct controller {int state; int state_lock; int request_result; int button_work; } ;






 int PCI_EXP_SLTSTA_DLLSC ;
 int PCI_EXP_SLTSTA_PDC ;
 int POWEROFF_STATE ;
 int POWERON_STATE ;
 int SURPRISE_REMOVAL ;
 int cancel_delayed_work (int *) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pciehp_card_present (struct controller*) ;
 int pciehp_check_link_active (struct controller*) ;
 int pciehp_disable_slot (struct controller*,int ) ;
 int pciehp_enable_slot (struct controller*) ;
 int slot_name (struct controller*) ;

void pciehp_handle_presence_or_link_change(struct controller *ctrl, u32 events)
{
 bool present, link_active;





 mutex_lock(&ctrl->state_lock);
 switch (ctrl->state) {
 case 131:
  cancel_delayed_work(&ctrl->button_work);

 case 128:
  ctrl->state = POWEROFF_STATE;
  mutex_unlock(&ctrl->state_lock);
  if (events & PCI_EXP_SLTSTA_DLLSC)
   ctrl_info(ctrl, "Slot(%s): Link Down\n",
      slot_name(ctrl));
  if (events & PCI_EXP_SLTSTA_PDC)
   ctrl_info(ctrl, "Slot(%s): Card not present\n",
      slot_name(ctrl));
  pciehp_disable_slot(ctrl, SURPRISE_REMOVAL);
  break;
 default:
  mutex_unlock(&ctrl->state_lock);
  break;
 }


 mutex_lock(&ctrl->state_lock);
 present = pciehp_card_present(ctrl);
 link_active = pciehp_check_link_active(ctrl);
 if (!present && !link_active) {
  mutex_unlock(&ctrl->state_lock);
  return;
 }

 switch (ctrl->state) {
 case 130:
  cancel_delayed_work(&ctrl->button_work);

 case 129:
  ctrl->state = POWERON_STATE;
  mutex_unlock(&ctrl->state_lock);
  if (present)
   ctrl_info(ctrl, "Slot(%s): Card present\n",
      slot_name(ctrl));
  if (link_active)
   ctrl_info(ctrl, "Slot(%s): Link Up\n",
      slot_name(ctrl));
  ctrl->request_result = pciehp_enable_slot(ctrl);
  break;
 default:
  mutex_unlock(&ctrl->state_lock);
  break;
 }
}
