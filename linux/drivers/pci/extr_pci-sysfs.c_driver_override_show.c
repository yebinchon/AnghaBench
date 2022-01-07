
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {char* driver_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t driver_override_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 ssize_t len;

 device_lock(dev);
 len = snprintf(buf, PAGE_SIZE, "%s\n", pdev->driver_override);
 device_unlock(dev);
 return len;
}
