
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dev; TYPE_1__* ops; int mutex; } ;
struct TYPE_2__ {int owner; int (* release ) (struct phy*) ;} ;


 scalar_t__ IS_ERR (struct phy*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int stub1 (struct phy*) ;

void phy_put(struct phy *phy)
{
 if (!phy || IS_ERR(phy))
  return;

 mutex_lock(&phy->mutex);
 if (phy->ops->release)
  phy->ops->release(phy);
 mutex_unlock(&phy->mutex);

 module_put(phy->ops->owner);
 put_device(&phy->dev);
}
