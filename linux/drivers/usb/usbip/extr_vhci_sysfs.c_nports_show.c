
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int VHCI_PORTS ;
 int sprintf (char*,char*,int) ;
 int vhci_num_controllers ;

__attribute__((used)) static ssize_t nports_show(struct device *dev, struct device_attribute *attr,
      char *out)
{
 char *s = out;





 out += sprintf(out, "%d\n", VHCI_PORTS * vhci_num_controllers);
 return out - s;
}
