
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int product; int vendor; } ;
struct ulpi {TYPE_1__ id; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ,int ) ;
 int of_device_uevent_modalias (struct device*,struct kobj_uevent_env*) ;
 struct ulpi* to_ulpi_dev (struct device*) ;

__attribute__((used)) static int ulpi_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct ulpi *ulpi = to_ulpi_dev(dev);
 int ret;

 ret = of_device_uevent_modalias(dev, env);
 if (ret != -ENODEV)
  return ret;

 if (add_uevent_var(env, "MODALIAS=ulpi:v%04xp%04x",
      ulpi->id.vendor, ulpi->id.product))
  return -ENOMEM;
 return 0;
}
