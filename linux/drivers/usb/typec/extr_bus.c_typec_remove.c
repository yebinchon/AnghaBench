
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode_driver {int (* remove ) (struct typec_altmode*) ;} ;
struct typec_altmode {int * ops; int * desc; scalar_t__ active; } ;
struct device {int driver; } ;
struct altmode {int dummy; } ;


 int TYPEC_STATE_SAFE ;
 int WARN_ON (int ) ;
 int stub1 (struct typec_altmode*) ;
 struct altmode* to_altmode (struct typec_altmode*) ;
 struct typec_altmode_driver* to_altmode_driver (int ) ;
 struct typec_altmode* to_typec_altmode (struct device*) ;
 int typec_altmode_remove_links (struct altmode*) ;
 int typec_altmode_set_state (struct typec_altmode*,int ) ;
 int typec_altmode_update_active (struct typec_altmode*,int) ;

__attribute__((used)) static int typec_remove(struct device *dev)
{
 struct typec_altmode_driver *drv = to_altmode_driver(dev->driver);
 struct typec_altmode *adev = to_typec_altmode(dev);
 struct altmode *altmode = to_altmode(adev);

 typec_altmode_remove_links(altmode);

 if (drv->remove)
  drv->remove(to_typec_altmode(dev));

 if (adev->active) {
  WARN_ON(typec_altmode_set_state(adev, TYPEC_STATE_SAFE));
  typec_altmode_update_active(adev, 0);
 }

 adev->desc = ((void*)0);
 adev->ops = ((void*)0);

 return 0;
}
