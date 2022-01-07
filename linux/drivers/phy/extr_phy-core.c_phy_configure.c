
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union phy_configure_opts {int dummy; } phy_configure_opts ;
struct phy {int mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* configure ) (struct phy*,union phy_configure_opts*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct phy*,union phy_configure_opts*) ;

int phy_configure(struct phy *phy, union phy_configure_opts *opts)
{
 int ret;

 if (!phy)
  return -EINVAL;

 if (!phy->ops->configure)
  return -EOPNOTSUPP;

 mutex_lock(&phy->mutex);
 ret = phy->ops->configure(phy, opts);
 mutex_unlock(&phy->mutex);

 return ret;
}
