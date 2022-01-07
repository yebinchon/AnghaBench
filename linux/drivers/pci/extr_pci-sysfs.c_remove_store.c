
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ device_remove_file_self (struct device*,struct device_attribute*) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int pci_stop_and_remove_bus_device_locked (int ) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t remove_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 unsigned long val;

 if (kstrtoul(buf, 0, &val) < 0)
  return -EINVAL;

 if (val && device_remove_file_self(dev, attr))
  pci_stop_and_remove_bus_device_locked(to_pci_dev(dev));
 return count;
}
