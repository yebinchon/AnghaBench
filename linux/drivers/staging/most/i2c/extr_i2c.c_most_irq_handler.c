
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_disabled; int dwork; } ;
struct hdm_i2c {TYPE_1__ rx; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t most_irq_handler(int irq, void *_dev)
{
 struct hdm_i2c *dev = _dev;

 disable_irq_nosync(irq);
 dev->rx.int_disabled = 1;
 schedule_delayed_work(&dev->rx.dwork, 0);

 return IRQ_HANDLED;
}
