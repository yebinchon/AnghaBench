
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINVAL ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 scalar_t__ pci_reset_function (struct pci_dev*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put (struct device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t reset_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 unsigned long val;
 ssize_t result = kstrtoul(buf, 0, &val);

 if (result < 0)
  return result;

 if (val != 1)
  return -EINVAL;

 pm_runtime_get_sync(dev);
 result = pci_reset_function(pdev);
 pm_runtime_put(dev);
 if (result < 0)
  return result;

 return count;
}
