
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uio_info {struct kpc_uio_device* priv; } ;
struct TYPE_5__ {int irq_base_num; } ;
struct kpc_uio_device {TYPE_3__* pcard; TYPE_2__ cte; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {scalar_t__ sysinfo_regs_base; TYPE_1__* pdev; } ;
struct TYPE_4__ {int irq; } ;


 int BIT_ULL (int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ REG_INTERRUPT_ACTIVE ;
 scalar_t__ kp2000_check_uio_irq (TYPE_3__*,int ) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static
irqreturn_t kuio_handler(int irq, struct uio_info *uioinfo)
{
 struct kpc_uio_device *kudev = uioinfo->priv;

 if (irq != kudev->pcard->pdev->irq)
  return IRQ_NONE;

 if (kp2000_check_uio_irq(kudev->pcard, kudev->cte.irq_base_num)) {

  writeq(BIT_ULL(kudev->cte.irq_base_num),
         kudev->pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
