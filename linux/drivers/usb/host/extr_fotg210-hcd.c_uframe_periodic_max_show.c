
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_hcd {int uframe_periodic_max; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int bus_to_hcd (int ) ;
 int dev_get_drvdata (struct device*) ;
 struct fotg210_hcd* hcd_to_fotg210 (int ) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t uframe_periodic_max_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct fotg210_hcd *fotg210;
 int n;

 fotg210 = hcd_to_fotg210(bus_to_hcd(dev_get_drvdata(dev)));
 n = scnprintf(buf, PAGE_SIZE, "%d\n", fotg210->uframe_periodic_max);
 return n;
}
