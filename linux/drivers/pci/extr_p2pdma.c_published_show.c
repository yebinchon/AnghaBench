
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* p2pdma; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int p2pmem_published; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t published_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev);

 return snprintf(buf, PAGE_SIZE, "%d\n",
   pdev->p2pdma->p2pmem_published);
}
