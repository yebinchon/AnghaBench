
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd {int companion_ports; int hcs_params; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HCS_N_PORTS (int ) ;
 int PAGE_SIZE ;
 int dev_get_drvdata (struct device*) ;
 struct ehci_hcd* hcd_to_ehci (int ) ;
 int scnprintf (char*,int,char*,int) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static ssize_t companion_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct ehci_hcd *ehci;
 int nports, index, n;
 int count = PAGE_SIZE;
 char *ptr = buf;

 ehci = hcd_to_ehci(dev_get_drvdata(dev));
 nports = HCS_N_PORTS(ehci->hcs_params);

 for (index = 0; index < nports; ++index) {
  if (test_bit(index, &ehci->companion_ports)) {
   n = scnprintf(ptr, count, "%d\n", index + 1);
   ptr += n;
   count -= n;
  }
 }
 return ptr - buf;
}
