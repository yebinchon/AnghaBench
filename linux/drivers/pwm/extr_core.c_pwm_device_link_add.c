
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_device {TYPE_1__* chip; } ;
struct device_link {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DL_FLAG_AUTOREMOVE_CONSUMER ;
 int EINVAL ;
 struct device_link* ERR_PTR (int ) ;
 int dev_err (struct device*,char*,int ) ;
 int dev_name (int ) ;
 int dev_warn (int ,char*) ;
 struct device_link* device_link_add (struct device*,int ,int ) ;

__attribute__((used)) static struct device_link *pwm_device_link_add(struct device *dev,
            struct pwm_device *pwm)
{
 struct device_link *dl;

 if (!dev) {





  dev_warn(pwm->chip->dev,
    "No consumer device specified to create a link to\n");
  return ((void*)0);
 }

 dl = device_link_add(dev, pwm->chip->dev, DL_FLAG_AUTOREMOVE_CONSUMER);
 if (!dl) {
  dev_err(dev, "failed to create device link to %s\n",
   dev_name(pwm->chip->dev));
  return ERR_PTR(-EINVAL);
 }

 return dl;
}
