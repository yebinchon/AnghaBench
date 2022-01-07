
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfn {int align; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;
 struct nd_pfn* to_nd_pfn_safe (struct device*) ;

__attribute__((used)) static ssize_t align_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_pfn *nd_pfn = to_nd_pfn_safe(dev);

 return sprintf(buf, "%ld\n", nd_pfn->align);
}
