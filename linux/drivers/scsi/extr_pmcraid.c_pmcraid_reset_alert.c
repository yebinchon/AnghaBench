
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int host_ioa_interrupt_reg; } ;
struct pmcraid_instance {int ioa_state; TYPE_1__ int_regs; int pdev; } ;
struct TYPE_4__ {int function; scalar_t__ expires; } ;
struct pmcraid_cmd {TYPE_2__ timer; int time_left; struct pmcraid_instance* drv_inst; } ;


 int DOORBELL_IOA_RESET_ALERT ;
 int IOA_STATE_IN_HARD_RESET ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 scalar_t__ PMCRAID_CHECK_FOR_RESET_TIMEOUT ;
 int PMCRAID_RESET_TIMEOUT ;
 int add_timer (TYPE_2__*) ;
 int ioread32 (int ) ;
 int iowrite32 (int ,int ) ;
 scalar_t__ jiffies ;
 int pci_read_config_word (int ,int ,int*) ;
 int pmcraid_info (char*,...) ;
 int pmcraid_reset_alert_done ;
 int pmcraid_start_bist (struct pmcraid_cmd*) ;

__attribute__((used)) static void pmcraid_reset_alert(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 u32 doorbells;
 int rc;
 u16 pci_reg;






 rc = pci_read_config_word(pinstance->pdev, PCI_COMMAND, &pci_reg);
 if ((rc == PCIBIOS_SUCCESSFUL) && (pci_reg & PCI_COMMAND_MEMORY)) {






  cmd->time_left = PMCRAID_RESET_TIMEOUT;
  cmd->timer.expires = jiffies + PMCRAID_CHECK_FOR_RESET_TIMEOUT;
  cmd->timer.function = pmcraid_reset_alert_done;
  add_timer(&cmd->timer);

  iowrite32(DOORBELL_IOA_RESET_ALERT,
   pinstance->int_regs.host_ioa_interrupt_reg);
  doorbells =
   ioread32(pinstance->int_regs.host_ioa_interrupt_reg);
  pmcraid_info("doorbells after reset alert: %x\n", doorbells);
 } else {
  pmcraid_info("PCI config is not accessible starting BIST\n");
  pinstance->ioa_state = IOA_STATE_IN_HARD_RESET;
  pmcraid_start_bist(cmd);
 }
}
