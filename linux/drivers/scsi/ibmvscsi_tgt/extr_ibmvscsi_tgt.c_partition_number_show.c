
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int partition_number ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t partition_number_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%x\n", partition_number);
}
