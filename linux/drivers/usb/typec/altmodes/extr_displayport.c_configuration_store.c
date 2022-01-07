
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int conf; } ;
struct dp_altmode {scalar_t__ state; int lock; TYPE_2__ data; TYPE_1__* alt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ active; int vdo; } ;


 int DP_CAP_CAPABILITY (int ) ;
 int DP_CAP_DFP_D ;
 int DP_CAP_UFP_D ;
 int DP_CONF_DFP_D ;
 int DP_CONF_DUAL_D ;
 int DP_CONF_UFP_D ;
 scalar_t__ DP_STATE_IDLE ;
 int EBUSY ;
 int EINVAL ;
 int configurations ;
 struct dp_altmode* dev_get_drvdata (struct device*) ;
 int dp_altmode_configure_vdm (struct dp_altmode*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_match_string (int ,char const*) ;

__attribute__((used)) static ssize_t
configuration_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t size)
{
 struct dp_altmode *dp = dev_get_drvdata(dev);
 u32 conf;
 u32 cap;
 int con;
 int ret = 0;

 con = sysfs_match_string(configurations, buf);
 if (con < 0)
  return con;

 mutex_lock(&dp->lock);

 if (dp->state != DP_STATE_IDLE) {
  ret = -EBUSY;
  goto err_unlock;
 }

 cap = DP_CAP_CAPABILITY(dp->alt->vdo);

 if ((con == DP_CONF_DFP_D && !(cap & DP_CAP_DFP_D)) ||
     (con == DP_CONF_UFP_D && !(cap & DP_CAP_UFP_D))) {
  ret = -EINVAL;
  goto err_unlock;
 }

 conf = dp->data.conf & ~DP_CONF_DUAL_D;
 conf |= con;

 if (dp->alt->active) {
  ret = dp_altmode_configure_vdm(dp, conf);
  if (ret)
   goto err_unlock;
 }

 dp->data.conf = conf;

err_unlock:
 mutex_unlock(&dp->lock);

 return ret ? ret : size;
}
