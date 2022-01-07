
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_thermal_sensor {int irq; struct device* dev; } ;
struct platform_device {int dummy; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int name; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int dev_err (struct device*,char*,...) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,int ,struct st_thermal_sensor*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int st_mmap_enable_irq (struct st_thermal_sensor*) ;
 int st_mmap_thermal_trip_handler ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int st_mmap_register_enable_irq(struct st_thermal_sensor *sensor)
{
 struct device *dev = sensor->dev;
 struct platform_device *pdev = to_platform_device(dev);
 int ret;

 sensor->irq = platform_get_irq(pdev, 0);
 if (sensor->irq < 0) {
  dev_err(dev, "failed to register IRQ\n");
  return sensor->irq;
 }

 ret = devm_request_threaded_irq(dev, sensor->irq,
     ((void*)0), st_mmap_thermal_trip_handler,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     dev->driver->name, sensor);
 if (ret) {
  dev_err(dev, "failed to register IRQ %d\n", sensor->irq);
  return ret;
 }

 return st_mmap_enable_irq(sensor);
}
