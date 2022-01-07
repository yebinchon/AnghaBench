
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long,unsigned long,int ) ;
 struct zorro_dev* to_zorro_dev (struct device*) ;
 scalar_t__ zorro_resource_end (struct zorro_dev*) ;
 int zorro_resource_flags (struct zorro_dev*) ;
 scalar_t__ zorro_resource_start (struct zorro_dev*) ;

__attribute__((used)) static ssize_t resource_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct zorro_dev *z = to_zorro_dev(dev);

 return sprintf(buf, "0x%08lx 0x%08lx 0x%08lx\n",
         (unsigned long)zorro_resource_start(z),
         (unsigned long)zorro_resource_end(z),
         zorro_resource_flags(z));
}
