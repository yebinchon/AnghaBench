
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int conf; } ;
struct dp_altmode {int lock; TYPE_2__ data; TYPE_1__* alt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int vdo; } ;


 int ARRAY_SIZE (char**) ;
 int DP_CAP_CAPABILITY (int ) ;
 int DP_CAP_DFP_D ;
 int DP_CAP_UFP_D ;
 int DP_CONF_CURRENTLY (int ) ;
 int DP_CONF_DFP_D ;
 int DP_CONF_UFP_D ;
 char** configurations ;
 struct dp_altmode* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t configuration_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct dp_altmode *dp = dev_get_drvdata(dev);
 int len;
 u8 cap;
 u8 cur;
 int i;

 mutex_lock(&dp->lock);

 cap = DP_CAP_CAPABILITY(dp->alt->vdo);
 cur = DP_CONF_CURRENTLY(dp->data.conf);

 len = sprintf(buf, "%s ", cur ? "USB" : "[USB]");

 for (i = 1; i < ARRAY_SIZE(configurations); i++) {
  if (i == cur)
   len += sprintf(buf + len, "[%s] ", configurations[i]);
  else if ((i == DP_CONF_DFP_D && cap & DP_CAP_DFP_D) ||
    (i == DP_CONF_UFP_D && cap & DP_CAP_UFP_D))
   len += sprintf(buf + len, "%s ", configurations[i]);
 }

 mutex_unlock(&dp->lock);

 buf[len - 1] = '\n';
 return len;
}
