
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int range_max; int range_min; } ;


 int sprintf (char*,char*,int ,int ) ;
 TYPE_1__* to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
range_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "[%lld,%llu]\n", to_rtc_device(dev)->range_min,
         to_rtc_device(dev)->range_max);
}
