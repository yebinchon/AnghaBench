
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {scalar_t__ prev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* rio_name (scalar_t__) ;
 int sprintf (char*,char*,char*) ;
 struct rio_dev* to_rio_dev (struct device*) ;

__attribute__((used)) static ssize_t lprev_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct rio_dev *rdev = to_rio_dev(dev);

 return sprintf(buf, "%s\n",
   (rdev->prev) ? rio_name(rdev->prev) : "root");
}
