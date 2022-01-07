
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m48t59_private {int lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;


 int M48T59_INTR ;
 int M48T59_INTR_AFE ;
 int M48T59_WRITE (int,int ) ;
 struct m48t59_private* dev_get_drvdata (struct device*) ;
 struct m48t59_plat_data* dev_get_platdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int m48t59_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct m48t59_plat_data *pdata = dev_get_platdata(dev);
 struct m48t59_private *m48t59 = dev_get_drvdata(dev);
 unsigned long flags;

 spin_lock_irqsave(&m48t59->lock, flags);
 if (enabled)
  M48T59_WRITE(M48T59_INTR_AFE, M48T59_INTR);
 else
  M48T59_WRITE(0x00, M48T59_INTR);
 spin_unlock_irqrestore(&m48t59->lock, flags);

 return 0;
}
