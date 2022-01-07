
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int nd_region_to_nstype (struct nd_region*) ;
 int sprintf (char*,char*,int) ;
 struct nd_region* to_nd_region (int ) ;

__attribute__((used)) static ssize_t nstype_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_region *nd_region = to_nd_region(dev->parent);

 return sprintf(buf, "%d\n", nd_region_to_nstype(nd_region));
}
