
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ instance_count; } ;
struct wmi_block {TYPE_1__ gblock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct wmi_block* dev_to_wblock (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t instance_count_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct wmi_block *wblock = dev_to_wblock(dev);

 return sprintf(buf, "%d\n", (int)wblock->gblock.instance_count);
}
