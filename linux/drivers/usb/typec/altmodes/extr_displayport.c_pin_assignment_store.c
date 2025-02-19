
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int conf; } ;
struct dp_altmode {scalar_t__ state; int lock; TYPE_2__ data; TYPE_1__* alt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ active; int vdo; } ;


 int BIT (int) ;
 int DP_CAP_DFP_D_PIN_ASSIGN (int ) ;
 int DP_CAP_UFP_D_PIN_ASSIGN (int ) ;
 scalar_t__ DP_CONF_CURRENTLY (int) ;
 scalar_t__ DP_CONF_DFP_D ;
 int DP_CONF_GET_PIN_ASSIGN (int) ;
 int DP_CONF_PIN_ASSIGNEMENT_MASK ;
 int DP_CONF_SET_PIN_ASSIGN (int ) ;
 scalar_t__ DP_STATE_IDLE ;
 int EBUSY ;
 int EINVAL ;
 struct dp_altmode* dev_get_drvdata (struct device*) ;
 int dp_altmode_configure_vdm (struct dp_altmode*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pin_assignments ;
 int sysfs_match_string (int ,char const*) ;

__attribute__((used)) static ssize_t
pin_assignment_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t size)
{
 struct dp_altmode *dp = dev_get_drvdata(dev);
 u8 assignments;
 u32 conf;
 int ret;

 ret = sysfs_match_string(pin_assignments, buf);
 if (ret < 0)
  return ret;

 conf = DP_CONF_SET_PIN_ASSIGN(BIT(ret));
 ret = 0;

 mutex_lock(&dp->lock);

 if (conf & dp->data.conf)
  goto out_unlock;

 if (dp->state != DP_STATE_IDLE) {
  ret = -EBUSY;
  goto out_unlock;
 }

 if (DP_CONF_CURRENTLY(dp->data.conf) == DP_CONF_DFP_D)
  assignments = DP_CAP_UFP_D_PIN_ASSIGN(dp->alt->vdo);
 else
  assignments = DP_CAP_DFP_D_PIN_ASSIGN(dp->alt->vdo);

 if (!(DP_CONF_GET_PIN_ASSIGN(conf) & assignments)) {
  ret = -EINVAL;
  goto out_unlock;
 }

 conf |= dp->data.conf & ~DP_CONF_PIN_ASSIGNEMENT_MASK;


 if (dp->alt->active && DP_CONF_CURRENTLY(dp->data.conf)) {
  ret = dp_altmode_configure_vdm(dp, conf);
  if (ret)
   goto out_unlock;
 }

 dp->data.conf = conf;

out_unlock:
 mutex_unlock(&dp->lock);

 return ret ? ret : size;
}
