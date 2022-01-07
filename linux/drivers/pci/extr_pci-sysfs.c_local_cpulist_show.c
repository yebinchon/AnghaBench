
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int pci_dev_show_local_cpu (struct device*,int,struct device_attribute*,char*) ;

__attribute__((used)) static ssize_t local_cpulist_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 return pci_dev_show_local_cpu(dev, 1, attr, buf);
}
