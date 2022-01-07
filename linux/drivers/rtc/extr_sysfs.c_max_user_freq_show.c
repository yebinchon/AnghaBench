
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int max_user_freq; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
max_user_freq_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", to_rtc_device(dev)->max_user_freq);
}
