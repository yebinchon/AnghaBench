
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_3__ {int sense_interrupt_reg; int sense_interrupt_reg32; int sense_interrupt_mask_reg; int clr_interrupt_mask_reg32; } ;
struct ipr_ioa_cfg {TYPE_2__* host; scalar_t__ msi_received; int msi_wait_q; TYPE_1__ regs; } ;
struct TYPE_4__ {int host_lock; } ;


 int ENTER ;
 int EOPNOTSUPP ;
 int HZ ;
 int IPR_NAME ;
 int IPR_PCII_IOA_TRANS_TO_OPER ;
 int IPR_PCII_IO_DEBUG_ACKNOWLEDGE ;
 int LEAVE ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,...) ;
 int free_irq (int,struct ipr_ioa_cfg*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ ipr_debug ;
 int ipr_mask_and_clear_interrupts (struct ipr_ioa_cfg*,int ) ;
 int ipr_test_intr ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int readl (int ) ;
 int request_irq (int,int ,int ,int ,struct ipr_ioa_cfg*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event_timeout (int ,scalar_t__,int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int ipr_test_msi(struct ipr_ioa_cfg *ioa_cfg, struct pci_dev *pdev)
{
 int rc;
 volatile u32 int_reg;
 unsigned long lock_flags = 0;
 int irq = pci_irq_vector(pdev, 0);

 ENTER;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 init_waitqueue_head(&ioa_cfg->msi_wait_q);
 ioa_cfg->msi_received = 0;
 ipr_mask_and_clear_interrupts(ioa_cfg, ~IPR_PCII_IOA_TRANS_TO_OPER);
 writel(IPR_PCII_IO_DEBUG_ACKNOWLEDGE, ioa_cfg->regs.clr_interrupt_mask_reg32);
 int_reg = readl(ioa_cfg->regs.sense_interrupt_mask_reg);
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);

 rc = request_irq(irq, ipr_test_intr, 0, IPR_NAME, ioa_cfg);
 if (rc) {
  dev_err(&pdev->dev, "Can not assign irq %d\n", irq);
  return rc;
 } else if (ipr_debug)
  dev_info(&pdev->dev, "IRQ assigned: %d\n", irq);

 writel(IPR_PCII_IO_DEBUG_ACKNOWLEDGE, ioa_cfg->regs.sense_interrupt_reg32);
 int_reg = readl(ioa_cfg->regs.sense_interrupt_reg);
 wait_event_timeout(ioa_cfg->msi_wait_q, ioa_cfg->msi_received, HZ);
 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 ipr_mask_and_clear_interrupts(ioa_cfg, ~IPR_PCII_IOA_TRANS_TO_OPER);

 if (!ioa_cfg->msi_received) {

  dev_info(&pdev->dev, "MSI test failed.  Falling back to LSI.\n");
  rc = -EOPNOTSUPP;
 } else if (ipr_debug)
  dev_info(&pdev->dev, "MSI test succeeded.\n");

 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);

 free_irq(irq, ioa_cfg);

 LEAVE;

 return rc;
}
