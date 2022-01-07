
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ufs_hba {int nutrs; TYPE_1__* host; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int host_lock; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_INTERRUPT_ENABLE ;
 int REG_INTERRUPT_STATUS ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int ufshcd_readl (struct ufs_hba*,int ) ;
 int ufshcd_sl_intr (struct ufs_hba*,int) ;
 int ufshcd_writel (struct ufs_hba*,int,int ) ;

__attribute__((used)) static irqreturn_t ufshcd_intr(int irq, void *__hba)
{
 u32 intr_status, enabled_intr_status;
 irqreturn_t retval = IRQ_NONE;
 struct ufs_hba *hba = __hba;
 int retries = hba->nutrs;

 spin_lock(hba->host->host_lock);
 intr_status = ufshcd_readl(hba, REG_INTERRUPT_STATUS);







 do {
  enabled_intr_status =
   intr_status & ufshcd_readl(hba, REG_INTERRUPT_ENABLE);
  if (intr_status)
   ufshcd_writel(hba, intr_status, REG_INTERRUPT_STATUS);
  if (enabled_intr_status) {
   ufshcd_sl_intr(hba, enabled_intr_status);
   retval = IRQ_HANDLED;
  }

  intr_status = ufshcd_readl(hba, REG_INTERRUPT_STATUS);
 } while (intr_status && --retries);

 spin_unlock(hba->host->host_lock);
 return retval;
}
