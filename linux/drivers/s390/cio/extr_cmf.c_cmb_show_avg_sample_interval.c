
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
typedef int ssize_t ;
struct TYPE_2__ {long cmb_start_time; } ;


 int cmb_sample_count ;
 unsigned long cmf_read (struct ccw_device*,int ) ;
 long get_tod_clock () ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int sprintf (char*,char*,long) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 long tod_to_ns (long) ;

__attribute__((used)) static ssize_t cmb_show_avg_sample_interval(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 unsigned long count;
 long interval;

 count = cmf_read(cdev, cmb_sample_count);
 spin_lock_irq(cdev->ccwlock);
 if (count) {
  interval = get_tod_clock() - cdev->private->cmb_start_time;
  interval = tod_to_ns(interval);
  interval /= count;
 } else
  interval = -1;
 spin_unlock_irq(cdev->ccwlock);
 return sprintf(buf, "%ld\n", interval);
}
