
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 void const* dev_fwnode (struct device*) ;
 scalar_t__ dev_name_ends_with (struct device*,char*) ;

__attribute__((used)) static int mux_fwnode_match(struct device *dev, const void *fwnode)
{
 return dev_fwnode(dev) == fwnode && dev_name_ends_with(dev, "-mux");
}
