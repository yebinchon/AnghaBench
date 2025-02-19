
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thermal_cooling_device {int dummy; } ;
struct device_node {int dummy; } ;
struct devfreq_cooling_power {int dummy; } ;
struct devfreq_cooling_device {int id; struct devfreq_cooling_device* freq_table; struct devfreq_cooling_device* power_table; struct thermal_cooling_device* cdev; struct devfreq_cooling_power* power_ops; struct devfreq* devfreq; } ;
struct TYPE_4__ {int parent; } ;
struct devfreq {TYPE_1__ dev; } ;
typedef int dev_name ;
struct TYPE_5__ {int power2state; int state2power; int get_requested_power; } ;


 int ENOMEM ;
 struct thermal_cooling_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct thermal_cooling_device*) ;
 int PTR_ERR (struct thermal_cooling_device*) ;
 int THERMAL_NAME_LENGTH ;
 int dev_err (int ,char*,int) ;
 int devfreq_cooling_gen_tables (struct devfreq_cooling_device*) ;
 int devfreq_cooling_get_requested_power ;
 TYPE_2__ devfreq_cooling_ops ;
 int devfreq_cooling_power2state ;
 int devfreq_cooling_state2power ;
 int devfreq_ida ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct devfreq_cooling_device*) ;
 struct devfreq_cooling_device* kzalloc (int,int ) ;
 int snprintf (char*,int,char*,int) ;
 struct thermal_cooling_device* thermal_of_cooling_device_register (struct device_node*,char*,struct devfreq_cooling_device*,TYPE_2__*) ;

struct thermal_cooling_device *
of_devfreq_cooling_register_power(struct device_node *np, struct devfreq *df,
      struct devfreq_cooling_power *dfc_power)
{
 struct thermal_cooling_device *cdev;
 struct devfreq_cooling_device *dfc;
 char dev_name[THERMAL_NAME_LENGTH];
 int err;

 dfc = kzalloc(sizeof(*dfc), GFP_KERNEL);
 if (!dfc)
  return ERR_PTR(-ENOMEM);

 dfc->devfreq = df;

 if (dfc_power) {
  dfc->power_ops = dfc_power;

  devfreq_cooling_ops.get_requested_power =
   devfreq_cooling_get_requested_power;
  devfreq_cooling_ops.state2power = devfreq_cooling_state2power;
  devfreq_cooling_ops.power2state = devfreq_cooling_power2state;
 }

 err = devfreq_cooling_gen_tables(dfc);
 if (err)
  goto free_dfc;

 err = ida_simple_get(&devfreq_ida, 0, 0, GFP_KERNEL);
 if (err < 0)
  goto free_tables;
 dfc->id = err;

 snprintf(dev_name, sizeof(dev_name), "thermal-devfreq-%d", dfc->id);

 cdev = thermal_of_cooling_device_register(np, dev_name, dfc,
        &devfreq_cooling_ops);
 if (IS_ERR(cdev)) {
  err = PTR_ERR(cdev);
  dev_err(df->dev.parent,
   "Failed to register devfreq cooling device (%d)\n",
   err);
  goto release_ida;
 }

 dfc->cdev = cdev;

 return cdev;

release_ida:
 ida_simple_remove(&devfreq_ida, dfc->id);
free_tables:
 kfree(dfc->power_table);
 kfree(dfc->freq_table);
free_dfc:
 kfree(dfc);

 return ERR_PTR(err);
}
