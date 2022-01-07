
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_device {int css; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ imgu_css_irq_ack (int *) ;

__attribute__((used)) static irqreturn_t imgu_isr(int irq, void *imgu_ptr)
{
 struct imgu_device *imgu = imgu_ptr;


 if (imgu_css_irq_ack(&imgu->css) < 0)
  return IRQ_NONE;

 return IRQ_WAKE_THREAD;
}
