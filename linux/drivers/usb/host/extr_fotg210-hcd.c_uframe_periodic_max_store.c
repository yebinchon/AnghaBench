
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {unsigned int uframe_periodic_max; unsigned int periodic_size; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int bus_to_hcd (int ) ;
 int dev_get_drvdata (struct device*) ;
 int fotg210_info (struct fotg210_hcd*,char*,int,...) ;
 int fotg210_warn (struct fotg210_hcd*,char*) ;
 struct fotg210_hcd* hcd_to_fotg210 (int ) ;
 scalar_t__ kstrtouint (char const*,int ,unsigned int*) ;
 unsigned short max (unsigned short,int ) ;
 int periodic_usecs (struct fotg210_hcd*,unsigned int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t uframe_periodic_max_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct fotg210_hcd *fotg210;
 unsigned uframe_periodic_max;
 unsigned frame, uframe;
 unsigned short allocated_max;
 unsigned long flags;
 ssize_t ret;

 fotg210 = hcd_to_fotg210(bus_to_hcd(dev_get_drvdata(dev)));
 if (kstrtouint(buf, 0, &uframe_periodic_max) < 0)
  return -EINVAL;

 if (uframe_periodic_max < 100 || uframe_periodic_max >= 125) {
  fotg210_info(fotg210, "rejecting invalid request for uframe_periodic_max=%u\n",
    uframe_periodic_max);
  return -EINVAL;
 }

 ret = -EINVAL;





 spin_lock_irqsave(&fotg210->lock, flags);






 if (uframe_periodic_max < fotg210->uframe_periodic_max) {
  allocated_max = 0;

  for (frame = 0; frame < fotg210->periodic_size; ++frame)
   for (uframe = 0; uframe < 7; ++uframe)
    allocated_max = max(allocated_max,
      periodic_usecs(fotg210, frame,
      uframe));

  if (allocated_max > uframe_periodic_max) {
   fotg210_info(fotg210,
     "cannot decrease uframe_periodic_max because periodic bandwidth is already allocated (%u > %u)\n",
     allocated_max, uframe_periodic_max);
   goto out_unlock;
  }
 }



 fotg210_info(fotg210,
   "setting max periodic bandwidth to %u%% (== %u usec/uframe)\n",
   100 * uframe_periodic_max/125, uframe_periodic_max);

 if (uframe_periodic_max != 100)
  fotg210_warn(fotg210, "max periodic bandwidth set is non-standard\n");

 fotg210->uframe_periodic_max = uframe_periodic_max;
 ret = count;

out_unlock:
 spin_unlock_irqrestore(&fotg210->lock, flags);
 return ret;
}
