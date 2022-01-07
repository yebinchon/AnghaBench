
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device const* parent; } ;


 int NAME_MAX ;
 char* dev_name (struct device const*) ;
 int snprintf (char*,int ,char*,char*,...) ;

__attribute__((used)) static void opp_set_dev_name(const struct device *dev, char *name)
{
 if (dev->parent)
  snprintf(name, NAME_MAX, "%s-%s", dev_name(dev->parent),
    dev_name(dev));
 else
  snprintf(name, NAME_MAX, "%s", dev_name(dev));
}
