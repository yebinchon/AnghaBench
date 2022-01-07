
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_unregister (struct device*) ;
 scalar_t__ is_card_dev (struct device*) ;

__attribute__((used)) static int __ap_card_devices_unregister(struct device *dev, void *dummy)
{
 if (is_card_dev(dev))
  device_unregister(dev);
 return 0;
}
