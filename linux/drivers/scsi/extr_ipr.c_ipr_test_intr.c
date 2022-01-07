
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {int msi_received; TYPE_2__* host; int msi_wait_q; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int host_lock; } ;
struct TYPE_3__ {int dev; } ;


 int IRQ_HANDLED ;
 int dev_info (int *,char*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t ipr_test_intr(int irq, void *devp)
{
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)devp;
 unsigned long lock_flags = 0;
 irqreturn_t rc = IRQ_HANDLED;

 dev_info(&ioa_cfg->pdev->dev, "Received IRQ : %d\n", irq);
 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);

 ioa_cfg->msi_received = 1;
 wake_up(&ioa_cfg->msi_wait_q);

 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
 return rc;
}
