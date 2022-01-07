
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {TYPE_1__* bus; } ;
typedef int ssize_t ;
struct TYPE_4__ {char* devicetype; } ;
struct TYPE_3__ {char* name; } ;


 int sprintf (char*,char*,char*,char*) ;
 TYPE_2__* to_xenbus_device (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%s:%s\n", dev->bus->name,
         to_xenbus_device(dev)->devicetype);
}
