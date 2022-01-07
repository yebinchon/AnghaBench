
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ snprintf (char*,int,char*) ;

__attribute__((used)) static ssize_t w1_master_attribute_show_remove(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 int c = PAGE_SIZE;
 c -= snprintf(buf+PAGE_SIZE - c, c,
  "write device id xx-xxxxxxxxxxxx to remove slave\n");
 return PAGE_SIZE - c;
}
