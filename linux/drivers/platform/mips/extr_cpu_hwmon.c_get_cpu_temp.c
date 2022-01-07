
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int loongson3_cpu_temp (int) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t get_cpu_temp(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 int id = (to_sensor_dev_attr(attr))->index - 1;
 int value = loongson3_cpu_temp(id);
 return sprintf(buf, "%d\n", value);
}
