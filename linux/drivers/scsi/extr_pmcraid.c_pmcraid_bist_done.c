
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct timer_list {int dummy; } ;
struct pmcraid_instance {TYPE_1__* host; int pdev; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct pmcraid_cmd {scalar_t__ time_left; TYPE_2__ timer; struct pmcraid_instance* drv_inst; } ;
struct TYPE_3__ {int host_lock; } ;


 int PCIBIOS_SUCCESSFUL ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 int add_timer (TYPE_2__*) ;
 struct pmcraid_cmd* cmd ;
 struct pmcraid_cmd* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int pci_read_config_word (int ,int ,int*) ;
 int pmcraid_info (char*) ;
 int pmcraid_ioa_reset (struct pmcraid_cmd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int timer ;

__attribute__((used)) static void pmcraid_bist_done(struct timer_list *t)
{
 struct pmcraid_cmd *cmd = from_timer(cmd, t, timer);
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 unsigned long lock_flags;
 int rc;
 u16 pci_reg;

 rc = pci_read_config_word(pinstance->pdev, PCI_COMMAND, &pci_reg);


 if ((rc != PCIBIOS_SUCCESSFUL || (!(pci_reg & PCI_COMMAND_MEMORY))) &&
     cmd->time_left > 0) {
  pmcraid_info("BIST not complete, waiting another 2 secs\n");
  cmd->timer.expires = jiffies + cmd->time_left;
  cmd->time_left = 0;
  add_timer(&cmd->timer);
 } else {
  cmd->time_left = 0;
  pmcraid_info("BIST is complete, proceeding with reset\n");
  spin_lock_irqsave(pinstance->host->host_lock, lock_flags);
  pmcraid_ioa_reset(cmd);
  spin_unlock_irqrestore(pinstance->host->host_lock, lock_flags);
 }
}
