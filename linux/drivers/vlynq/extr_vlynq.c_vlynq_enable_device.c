
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct plat_vlynq_ops* platform_data; } ;
struct vlynq_device {int enabled; TYPE_1__ dev; } ;
struct plat_vlynq_ops {int (* off ) (struct vlynq_device*) ;} ;


 int ENODEV ;
 int __vlynq_enable_device (struct vlynq_device*) ;
 int stub1 (struct vlynq_device*) ;
 int vlynq_setup_irq (struct vlynq_device*) ;

int vlynq_enable_device(struct vlynq_device *dev)
{
 struct plat_vlynq_ops *ops = dev->dev.platform_data;
 int result = -ENODEV;

 result = __vlynq_enable_device(dev);
 if (result)
  return result;

 result = vlynq_setup_irq(dev);
 if (result)
  ops->off(dev);

 dev->enabled = !result;
 return result;
}
