
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* sriov; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int drivers_autoprobe; } ;


 size_t EINVAL ;
 scalar_t__ kstrtobool (char const*,int*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t sriov_drivers_autoprobe_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 bool drivers_autoprobe;

 if (kstrtobool(buf, &drivers_autoprobe) < 0)
  return -EINVAL;

 pdev->sriov->drivers_autoprobe = drivers_autoprobe;

 return count;
}
