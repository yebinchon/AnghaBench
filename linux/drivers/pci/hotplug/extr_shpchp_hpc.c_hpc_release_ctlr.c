
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct controller {int num_slots; int mmio_size; int mmio_base; int creg; TYPE_1__* pci_dev; int poll_timer; } ;
struct TYPE_2__ {int irq; } ;


 int ARBITER_SERR_MASK ;
 int BUTTON_PRESS_INTR_MASK ;
 int COMMAND_INTR_MASK ;
 int CON_PFAULT_INTR_MASK ;
 int CON_PFAULT_SERR_MASK ;
 int GLOBAL_INTR_MASK ;
 int GLOBAL_SERR_MASK ;
 int ISO_PFAULT_INTR_MASK ;
 int MRL_CHANGE_INTR_MASK ;
 int MRL_CHANGE_SERR_MASK ;
 int PRSNT_CHANGE_INTR_MASK ;
 int SERR_INTR_ENABLE ;
 int SERR_INTR_RSVDZ_MASK ;
 int SLOT_REG (int) ;
 int SLOT_REG_RSVDZ_MASK ;
 int cleanup_slots (struct controller*) ;
 int del_timer (int *) ;
 int free_irq (int ,struct controller*) ;
 int iounmap (int ) ;
 int pci_disable_msi (TYPE_1__*) ;
 int release_mem_region (int ,int ) ;
 int shpc_readl (struct controller*,int ) ;
 int shpc_writel (struct controller*,int ,int) ;
 scalar_t__ shpchp_poll_mode ;

__attribute__((used)) static void hpc_release_ctlr(struct controller *ctrl)
{
 int i;
 u32 slot_reg, serr_int;




 for (i = 0; i < ctrl->num_slots; i++) {
  slot_reg = shpc_readl(ctrl, SLOT_REG(i));
  slot_reg |= (PRSNT_CHANGE_INTR_MASK | ISO_PFAULT_INTR_MASK |
        BUTTON_PRESS_INTR_MASK | MRL_CHANGE_INTR_MASK |
        CON_PFAULT_INTR_MASK | MRL_CHANGE_SERR_MASK |
        CON_PFAULT_SERR_MASK);
  slot_reg &= ~SLOT_REG_RSVDZ_MASK;
  shpc_writel(ctrl, SLOT_REG(i), slot_reg);
 }

 cleanup_slots(ctrl);




 serr_int = shpc_readl(ctrl, SERR_INTR_ENABLE);
 serr_int |= (GLOBAL_INTR_MASK | GLOBAL_SERR_MASK |
       COMMAND_INTR_MASK | ARBITER_SERR_MASK);
 serr_int &= ~SERR_INTR_RSVDZ_MASK;
 shpc_writel(ctrl, SERR_INTR_ENABLE, serr_int);

 if (shpchp_poll_mode)
  del_timer(&ctrl->poll_timer);
 else {
  free_irq(ctrl->pci_dev->irq, ctrl);
  pci_disable_msi(ctrl->pci_dev);
 }

 iounmap(ctrl->creg);
 release_mem_region(ctrl->mmio_base, ctrl->mmio_size);
}
