
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int fsl_hv_queue_doorbell (uintptr_t) ;

__attribute__((used)) static irqreturn_t fsl_hv_isr(int irq, void *data)
{
 fsl_hv_queue_doorbell((uintptr_t) data);

 return IRQ_HANDLED;
}
