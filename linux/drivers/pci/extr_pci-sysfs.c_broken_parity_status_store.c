
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int broken_parity_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t broken_parity_status_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 unsigned long val;

 if (kstrtoul(buf, 0, &val) < 0)
  return -EINVAL;

 pdev->broken_parity_status = !!val;

 return count;
}
