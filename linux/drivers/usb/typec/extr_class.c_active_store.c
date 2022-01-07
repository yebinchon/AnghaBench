
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct typec_altmode {int active; TYPE_3__* ops; TYPE_1__ dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct altmode {TYPE_2__* partner; } ;
typedef int ssize_t ;
struct TYPE_8__ {scalar_t__ active; } ;
struct TYPE_7__ {int (* activate ) (struct typec_altmode*,int) ;} ;
struct TYPE_6__ {TYPE_4__ adev; } ;


 int EPERM ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ is_typec_port (int ) ;
 int kstrtobool (char const*,int*) ;
 int stub1 (struct typec_altmode*,int) ;
 struct altmode* to_altmode (struct typec_altmode*) ;
 struct typec_altmode* to_typec_altmode (struct device*) ;
 int typec_altmode_exit (TYPE_4__*) ;
 int typec_altmode_update_active (struct typec_altmode*,int) ;

__attribute__((used)) static ssize_t active_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t size)
{
 struct typec_altmode *adev = to_typec_altmode(dev);
 struct altmode *altmode = to_altmode(adev);
 bool enter;
 int ret;

 ret = kstrtobool(buf, &enter);
 if (ret)
  return ret;

 if (adev->active == enter)
  return size;

 if (is_typec_port(adev->dev.parent)) {
  typec_altmode_update_active(adev, enter);


  if (altmode->partner && !enter && altmode->partner->adev.active)
   typec_altmode_exit(&altmode->partner->adev);
 } else if (altmode->partner) {
  if (enter && !altmode->partner->adev.active) {
   dev_warn(dev, "port has the mode disabled\n");
   return -EPERM;
  }
 }


 if (adev->ops && adev->ops->activate) {
  ret = adev->ops->activate(adev, enter);
  if (ret)
   return ret;
 }

 return size;
}
