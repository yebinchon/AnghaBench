
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ scnprintf (char*,scalar_t__,char*) ;

__attribute__((used)) static ssize_t reboot_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 int count = 0;

 count += scnprintf(buf + count, PAGE_SIZE - count,
      "ro|rw|cancel|cold|disable-jump|hibernate");
 count += scnprintf(buf + count, PAGE_SIZE - count,
      " [at-shutdown]\n");
 return count;
}
