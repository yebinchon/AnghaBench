
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* calibrate ) (struct phy*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct phy*) ;

int phy_calibrate(struct phy *phy)
{
 int ret;

 if (!phy || !phy->ops->calibrate)
  return 0;

 mutex_lock(&phy->mutex);
 ret = phy->ops->calibrate(phy);
 mutex_unlock(&phy->mutex);

 return ret;
}
