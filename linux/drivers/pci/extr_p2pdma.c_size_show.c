
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* p2pdma; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ pool; } ;


 int PAGE_SIZE ;
 size_t gen_pool_size (scalar_t__) ;
 int snprintf (char*,int ,char*,size_t) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t size_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 size_t size = 0;

 if (pdev->p2pdma->pool)
  size = gen_pool_size(pdev->p2pdma->pool);

 return snprintf(buf, PAGE_SIZE, "%zd\n", size);
}
