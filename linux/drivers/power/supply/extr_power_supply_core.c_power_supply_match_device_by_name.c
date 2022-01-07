
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {TYPE_1__* desc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 struct power_supply* dev_get_drvdata (struct device*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int power_supply_match_device_by_name(struct device *dev, const void *data)
{
 const char *name = data;
 struct power_supply *psy = dev_get_drvdata(dev);

 return strcmp(psy->desc->name, name) == 0;
}
