
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_cooling_device {struct devfreq_cooling_device* devdata; } ;
struct device {int dummy; } ;
struct devfreq_cooling_device {unsigned long cooling_state; unsigned long freq_table_size; struct devfreq* devfreq; } ;
struct TYPE_2__ {struct device* parent; } ;
struct devfreq {TYPE_1__ dev; } ;


 int EINVAL ;
 int dev_dbg (struct device*,char*,unsigned long) ;
 int partition_enable_opps (struct devfreq_cooling_device*,unsigned long) ;

__attribute__((used)) static int devfreq_cooling_set_cur_state(struct thermal_cooling_device *cdev,
      unsigned long state)
{
 struct devfreq_cooling_device *dfc = cdev->devdata;
 struct devfreq *df = dfc->devfreq;
 struct device *dev = df->dev.parent;
 int ret;

 if (state == dfc->cooling_state)
  return 0;

 dev_dbg(dev, "Setting cooling state %lu\n", state);

 if (state >= dfc->freq_table_size)
  return -EINVAL;

 ret = partition_enable_opps(dfc, state);
 if (ret)
  return ret;

 dfc->cooling_state = state;

 return 0;
}
