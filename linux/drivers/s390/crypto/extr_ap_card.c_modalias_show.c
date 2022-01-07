
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int device_type; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_ap_dev (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "ap:t%02X\n", to_ap_dev(dev)->device_type);
}
