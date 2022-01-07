
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int enable_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 int sprintf (char*,char*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t enable_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct pci_dev *pdev;

 pdev = to_pci_dev(dev);
 return sprintf(buf, "%u\n", atomic_read(&pdev->enable_cnt));
}
