
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
struct phy {int mutex; TYPE_2__ attrs; TYPE_1__* ops; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;
struct TYPE_3__ {int (* set_mode ) (struct phy*,int,int) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct phy*,int,int) ;

int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode)
{
 int ret;

 if (!phy || !phy->ops->set_mode)
  return 0;

 mutex_lock(&phy->mutex);
 ret = phy->ops->set_mode(phy, mode, submode);
 if (!ret)
  phy->attrs.mode = mode;
 mutex_unlock(&phy->mutex);

 return ret;
}
