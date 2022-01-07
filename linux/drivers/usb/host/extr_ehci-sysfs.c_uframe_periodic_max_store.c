
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct ehci_hcd {unsigned int uframe_periodic_max; int lock; int * bandwidth; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 unsigned int EHCI_BANDWIDTH_SIZE ;
 size_t EINVAL ;
 int dev_get_drvdata (struct device*) ;
 int ehci_info (struct ehci_hcd*,char*,int,...) ;
 int ehci_warn (struct ehci_hcd*,char*) ;
 struct ehci_hcd* hcd_to_ehci (int ) ;
 scalar_t__ kstrtouint (char const*,int ,unsigned int*) ;
 unsigned int max (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t uframe_periodic_max_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct ehci_hcd *ehci;
 unsigned uframe_periodic_max;
 unsigned uframe;
 unsigned long flags;
 ssize_t ret;

 ehci = hcd_to_ehci(dev_get_drvdata(dev));
 if (kstrtouint(buf, 0, &uframe_periodic_max) < 0)
  return -EINVAL;

 if (uframe_periodic_max < 100 || uframe_periodic_max >= 125) {
  ehci_info(ehci, "rejecting invalid request for "
    "uframe_periodic_max=%u\n", uframe_periodic_max);
  return -EINVAL;
 }

 ret = -EINVAL;





 spin_lock_irqsave (&ehci->lock, flags);





 if (uframe_periodic_max < ehci->uframe_periodic_max) {
  u8 allocated_max = 0;

  for (uframe = 0; uframe < EHCI_BANDWIDTH_SIZE; ++uframe)
   allocated_max = max(allocated_max,
     ehci->bandwidth[uframe]);

  if (allocated_max > uframe_periodic_max) {
   ehci_info(ehci,
    "cannot decrease uframe_periodic_max because "
    "periodic bandwidth is already allocated "
    "(%u > %u)\n",
    allocated_max, uframe_periodic_max);
   goto out_unlock;
  }
 }



 ehci_info(ehci, "setting max periodic bandwidth to %u%% "
   "(== %u usec/uframe)\n",
   100*uframe_periodic_max/125, uframe_periodic_max);

 if (uframe_periodic_max != 100)
  ehci_warn(ehci, "max periodic bandwidth set is non-standard\n");

 ehci->uframe_periodic_max = uframe_periodic_max;
 ret = count;

out_unlock:
 spin_unlock_irqrestore (&ehci->lock, flags);
 return ret;
}
