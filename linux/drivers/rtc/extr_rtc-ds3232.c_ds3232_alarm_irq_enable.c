
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds3232 {scalar_t__ irq; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct ds3232* dev_get_drvdata (struct device*) ;
 int ds3232_update_alarm (struct device*,unsigned int) ;

__attribute__((used)) static int ds3232_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct ds3232 *ds3232 = dev_get_drvdata(dev);

 if (ds3232->irq <= 0)
  return -EINVAL;

 return ds3232_update_alarm(dev, enabled);
}
