
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlogicpti {int qpti_id; int irq; TYPE_1__* qhost; struct platform_device* op; } ;
struct TYPE_4__ {int * irqs; } ;
struct platform_device {TYPE_2__ archdata; } ;
struct TYPE_3__ {int irq; } ;


 int IRQF_SHARED ;
 int printk (char*,int ,...) ;
 int qpti_intr ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct qlogicpti*) ;

__attribute__((used)) static int qpti_register_irq(struct qlogicpti *qpti)
{
 struct platform_device *op = qpti->op;

 qpti->qhost->irq = qpti->irq = op->archdata.irqs[0];







 if (request_irq(qpti->irq, qpti_intr,
   IRQF_SHARED, "QlogicPTI", qpti))
  goto fail;

 printk("qlogicpti%d: IRQ %d ", qpti->qpti_id, qpti->irq);

 return 0;

fail:
 printk("qlogicpti%d: Cannot acquire irq line\n", qpti->qpti_id);
 return -1;
}
