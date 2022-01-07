
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dummy {TYPE_1__* driver; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int function; } ;


 int PAGE_SIZE ;
 struct dummy* gadget_dev_to_dummy (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t function_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct dummy *dum = gadget_dev_to_dummy(dev);

 if (!dum->driver || !dum->driver->function)
  return 0;
 return scnprintf(buf, PAGE_SIZE, "%s\n", dum->driver->function);
}
