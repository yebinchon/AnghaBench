
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* dst; } ;
struct TYPE_2__ {scalar_t__ state; int * src; int name; } ;


 int DSSERR (char*,...) ;
 int EINVAL ;
 scalar_t__ OMAP_DSS_DISPLAY_DISABLED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int output_lock ;

int omapdss_output_unset_device(struct omap_dss_device *out)
{
 int r;

 mutex_lock(&output_lock);

 if (!out->dst) {
  DSSERR("output doesn't have a device connected to it\n");
  r = -EINVAL;
  goto err;
 }

 if (out->dst->state != OMAP_DSS_DISPLAY_DISABLED) {
  DSSERR("device %s is not disabled, cannot unset device\n",
    out->dst->name);
  r = -EINVAL;
  goto err;
 }

 out->dst->src = ((void*)0);
 out->dst = ((void*)0);

 mutex_unlock(&output_lock);

 return 0;
err:
 mutex_unlock(&output_lock);

 return r;
}
