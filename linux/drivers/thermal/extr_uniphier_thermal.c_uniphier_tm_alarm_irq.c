
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_tm_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int disable_irq_nosync (int) ;
 int uniphier_tm_irq_clear (struct uniphier_tm_dev*) ;

__attribute__((used)) static irqreturn_t uniphier_tm_alarm_irq(int irq, void *_tdev)
{
 struct uniphier_tm_dev *tdev = _tdev;

 disable_irq_nosync(irq);
 uniphier_tm_irq_clear(tdev);

 return IRQ_WAKE_THREAD;
}
