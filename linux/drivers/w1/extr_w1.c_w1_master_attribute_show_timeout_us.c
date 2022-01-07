
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int w1_timeout_us ;

__attribute__((used)) static ssize_t w1_master_attribute_show_timeout_us(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 ssize_t count;
 count = sprintf(buf, "%d\n", w1_timeout_us);
 return count;
}
