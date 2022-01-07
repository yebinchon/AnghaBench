
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int state; int state_lock; int button_work; } ;




 int HZ ;


 int PCI_EXP_SLTCTL_ATTN_IND_OFF ;
 int PCI_EXP_SLTCTL_PWR_IND_BLINK ;
 int PCI_EXP_SLTCTL_PWR_IND_OFF ;
 int PCI_EXP_SLTCTL_PWR_IND_ON ;
 int cancel_delayed_work (int *) ;
 int ctrl_err (struct controller*,char*,int ,int) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pciehp_set_indicators (struct controller*,int ,int ) ;
 int schedule_delayed_work (int *,int) ;
 int slot_name (struct controller*) ;

void pciehp_handle_button_press(struct controller *ctrl)
{
 mutex_lock(&ctrl->state_lock);
 switch (ctrl->state) {
 case 129:
 case 128:
  if (ctrl->state == 128) {
   ctrl->state = 131;
   ctrl_info(ctrl, "Slot(%s): Powering off due to button press\n",
      slot_name(ctrl));
  } else {
   ctrl->state = 130;
   ctrl_info(ctrl, "Slot(%s) Powering on due to button press\n",
      slot_name(ctrl));
  }

  pciehp_set_indicators(ctrl, PCI_EXP_SLTCTL_PWR_IND_BLINK,
          PCI_EXP_SLTCTL_ATTN_IND_OFF);
  schedule_delayed_work(&ctrl->button_work, 5 * HZ);
  break;
 case 131:
 case 130:





  ctrl_info(ctrl, "Slot(%s): Button cancel\n", slot_name(ctrl));
  cancel_delayed_work(&ctrl->button_work);
  if (ctrl->state == 131) {
   ctrl->state = 128;
   pciehp_set_indicators(ctrl, PCI_EXP_SLTCTL_PWR_IND_ON,
           PCI_EXP_SLTCTL_ATTN_IND_OFF);
  } else {
   ctrl->state = 129;
   pciehp_set_indicators(ctrl, PCI_EXP_SLTCTL_PWR_IND_OFF,
           PCI_EXP_SLTCTL_ATTN_IND_OFF);
  }
  ctrl_info(ctrl, "Slot(%s): Action canceled due to button press\n",
     slot_name(ctrl));
  break;
 default:
  ctrl_err(ctrl, "Slot(%s): Ignoring invalid state %#x\n",
    slot_name(ctrl), ctrl->state);
  break;
 }
 mutex_unlock(&ctrl->state_lock);
}
