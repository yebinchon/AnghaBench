
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int pending_events; } ;


 int INDICATOR_NOOP ;
 int PCI_EXP_SLTCTL_PWR_IND_OFF ;
 int PCI_EXP_SLTSTA_DLLSC ;
 int PCI_EXP_SLTSTA_PDC ;
 scalar_t__ POWER_CTRL (struct controller*) ;
 int atomic_and (int,int *) ;
 int msleep (int) ;
 int pciehp_power_off_slot (struct controller*) ;
 int pciehp_set_indicators (struct controller*,int ,int ) ;
 int pciehp_unconfigure_device (struct controller*,int) ;

__attribute__((used)) static void remove_board(struct controller *ctrl, bool safe_removal)
{
 pciehp_unconfigure_device(ctrl, safe_removal);

 if (POWER_CTRL(ctrl)) {
  pciehp_power_off_slot(ctrl);






  msleep(1000);


  atomic_and(~(PCI_EXP_SLTSTA_DLLSC | PCI_EXP_SLTSTA_PDC),
      &ctrl->pending_events);
 }

 pciehp_set_indicators(ctrl, PCI_EXP_SLTCTL_PWR_IND_OFF,
         INDICATOR_NOOP);
}
