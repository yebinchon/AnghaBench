
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {scalar_t__ state; int reset_lock; int state_lock; } ;


 scalar_t__ BLINKINGOFF_STATE ;
 scalar_t__ BLINKINGON_STATE ;
 scalar_t__ OFF_STATE ;
 scalar_t__ ON_STATE ;
 int PCI_EXP_SLTSTA_PDC ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pciehp_card_present_or_link_active (struct controller*) ;
 int pciehp_request (struct controller*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static void pciehp_check_presence(struct controller *ctrl)
{
 bool occupied;

 down_read(&ctrl->reset_lock);
 mutex_lock(&ctrl->state_lock);

 occupied = pciehp_card_present_or_link_active(ctrl);
 if ((occupied && (ctrl->state == OFF_STATE ||
     ctrl->state == BLINKINGON_STATE)) ||
     (!occupied && (ctrl->state == ON_STATE ||
      ctrl->state == BLINKINGOFF_STATE)))
  pciehp_request(ctrl, PCI_EXP_SLTSTA_PDC);

 mutex_unlock(&ctrl->state_lock);
 up_read(&ctrl->reset_lock);
}
