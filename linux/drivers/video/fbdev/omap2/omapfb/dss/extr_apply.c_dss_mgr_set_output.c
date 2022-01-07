
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay_manager {int supported_outputs; struct omap_dss_device* output; int name; } ;
struct omap_dss_device {int id; struct omap_overlay_manager* manager; } ;


 int DSSERR (char*,int ) ;
 int EINVAL ;
 int apply_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dss_mgr_set_output(struct omap_overlay_manager *mgr,
  struct omap_dss_device *output)
{
 int r;

 mutex_lock(&apply_lock);

 if (mgr->output) {
  DSSERR("manager %s is already connected to an output\n",
   mgr->name);
  r = -EINVAL;
  goto err;
 }

 if ((mgr->supported_outputs & output->id) == 0) {
  DSSERR("output does not support manager %s\n",
   mgr->name);
  r = -EINVAL;
  goto err;
 }

 output->manager = mgr;
 mgr->output = output;

 mutex_unlock(&apply_lock);

 return 0;
err:
 mutex_unlock(&apply_lock);
 return r;
}
