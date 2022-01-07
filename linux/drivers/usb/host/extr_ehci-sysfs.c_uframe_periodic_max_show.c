
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int uframe_periodic_max; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int dev_get_drvdata (struct device*) ;
 struct ehci_hcd* hcd_to_ehci (int ) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t uframe_periodic_max_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct ehci_hcd *ehci;
 int n;

 ehci = hcd_to_ehci(dev_get_drvdata(dev));
 n = scnprintf(buf, PAGE_SIZE, "%d\n", ehci->uframe_periodic_max);
 return n;
}
