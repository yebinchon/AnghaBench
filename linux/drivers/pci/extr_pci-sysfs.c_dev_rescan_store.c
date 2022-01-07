
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int pci_lock_rescan_remove () ;
 int pci_rescan_bus (int ) ;
 int pci_unlock_rescan_remove () ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t dev_rescan_store(struct device *dev,
    struct device_attribute *attr, const char *buf,
    size_t count)
{
 unsigned long val;
 struct pci_dev *pdev = to_pci_dev(dev);

 if (kstrtoul(buf, 0, &val) < 0)
  return -EINVAL;

 if (val) {
  pci_lock_rescan_remove();
  pci_rescan_bus(pdev->bus);
  pci_unlock_rescan_remove();
 }
 return count;
}
