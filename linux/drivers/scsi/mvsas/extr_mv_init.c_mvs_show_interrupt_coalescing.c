
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int interrupt_coalescing ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t mvs_show_interrupt_coalescing(struct device *cdev,
   struct device_attribute *attr, char *buffer)
{
 return snprintf(buffer, PAGE_SIZE, "%d\n", interrupt_coalescing);
}
