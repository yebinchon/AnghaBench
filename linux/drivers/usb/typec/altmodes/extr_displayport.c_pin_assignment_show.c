
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int conf; } ;
struct dp_altmode {int lock; TYPE_2__* alt; TYPE_1__ data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int vdo; } ;


 int DP_CAP_DFP_D_PIN_ASSIGN (int ) ;
 int DP_CAP_UFP_D_PIN_ASSIGN (int ) ;
 scalar_t__ DP_CONF_CURRENTLY (int ) ;
 scalar_t__ DP_CONF_DFP_D ;
 int DP_CONF_GET_PIN_ASSIGN (int ) ;
 struct dp_altmode* dev_get_drvdata (struct device*) ;
 int get_count_order (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 char** pin_assignments ;
 scalar_t__ sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t pin_assignment_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct dp_altmode *dp = dev_get_drvdata(dev);
 u8 assignments;
 int len = 0;
 u8 cur;
 int i;

 mutex_lock(&dp->lock);

 cur = get_count_order(DP_CONF_GET_PIN_ASSIGN(dp->data.conf));

 if (DP_CONF_CURRENTLY(dp->data.conf) == DP_CONF_DFP_D)
  assignments = DP_CAP_UFP_D_PIN_ASSIGN(dp->alt->vdo);
 else
  assignments = DP_CAP_DFP_D_PIN_ASSIGN(dp->alt->vdo);

 for (i = 0; assignments; assignments >>= 1, i++) {
  if (assignments & 1) {
   if (i == cur)
    len += sprintf(buf + len, "[%s] ",
            pin_assignments[i]);
   else
    len += sprintf(buf + len, "%s ",
            pin_assignments[i]);
  }
 }

 mutex_unlock(&dp->lock);

 buf[len - 1] = '\n';
 return len;
}
