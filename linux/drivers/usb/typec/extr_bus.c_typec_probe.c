
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode_driver {int (* probe ) (struct typec_altmode*) ;} ;
struct typec_altmode {int dummy; } ;
struct device {int driver; } ;
struct altmode {int partner; } ;


 int ENODEV ;
 int dev_warn (struct device*,char*) ;
 int stub1 (struct typec_altmode*) ;
 struct altmode* to_altmode (struct typec_altmode*) ;
 struct typec_altmode_driver* to_altmode_driver (int ) ;
 struct typec_altmode* to_typec_altmode (struct device*) ;
 int typec_altmode_create_links (struct altmode*) ;
 int typec_altmode_remove_links (struct altmode*) ;

__attribute__((used)) static int typec_probe(struct device *dev)
{
 struct typec_altmode_driver *drv = to_altmode_driver(dev->driver);
 struct typec_altmode *adev = to_typec_altmode(dev);
 struct altmode *altmode = to_altmode(adev);
 int ret;


 if (!altmode->partner)
  return -ENODEV;

 ret = typec_altmode_create_links(altmode);
 if (ret) {
  dev_warn(dev, "failed to create symlinks\n");
  return ret;
 }

 ret = drv->probe(adev);
 if (ret)
  typec_altmode_remove_links(altmode);

 return ret;
}
