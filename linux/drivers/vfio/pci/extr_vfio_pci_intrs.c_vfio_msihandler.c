
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventfd_ctx {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int eventfd_signal (struct eventfd_ctx*,int) ;

__attribute__((used)) static irqreturn_t vfio_msihandler(int irq, void *arg)
{
 struct eventfd_ctx *trigger = arg;

 eventfd_signal(trigger, 1);
 return IRQ_HANDLED;
}
