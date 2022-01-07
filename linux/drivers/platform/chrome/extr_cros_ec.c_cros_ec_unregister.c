
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_device {scalar_t__ ec; scalar_t__ pd; } ;


 int platform_device_unregister (scalar_t__) ;

int cros_ec_unregister(struct cros_ec_device *ec_dev)
{
 if (ec_dev->pd)
  platform_device_unregister(ec_dev->pd);
 platform_device_unregister(ec_dev->ec);

 return 0;
}
