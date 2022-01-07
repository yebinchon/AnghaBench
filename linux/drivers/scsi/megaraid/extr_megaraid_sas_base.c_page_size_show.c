
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 int snprintf (char*,scalar_t__,char*,unsigned long) ;

__attribute__((used)) static ssize_t
page_size_show(struct device *cdev,
 struct device_attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%ld\n", (unsigned long)PAGE_SIZE - 1);
}
