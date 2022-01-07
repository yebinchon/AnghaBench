
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;


 int PCI_EXP_SLTCTL_ATTN_IND_ON ;
 int PCI_EXP_SLTCTL_PWR_IND_OFF ;
 scalar_t__ POWER_CTRL (struct controller*) ;
 int msleep (int) ;
 int pciehp_power_off_slot (struct controller*) ;
 int pciehp_set_indicators (struct controller*,int ,int ) ;

__attribute__((used)) static void set_slot_off(struct controller *ctrl)
{




 if (POWER_CTRL(ctrl)) {
  pciehp_power_off_slot(ctrl);






  msleep(1000);
 }

 pciehp_set_indicators(ctrl, PCI_EXP_SLTCTL_PWR_IND_OFF,
         PCI_EXP_SLTCTL_ATTN_IND_ON);
}
