
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct power_supply {int num_supplies; scalar_t__ supplied_from; TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int device_property_read_string_array (int ,char*,char const**,int) ;
 scalar_t__ devm_kmalloc_array (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static int power_supply_check_supplies(struct power_supply *psy)
{
 int nval, ret;

 if (!psy->dev.parent)
  return 0;

 nval = device_property_read_string_array(psy->dev.parent,
       "supplied-from", ((void*)0), 0);
 if (nval <= 0)
  return 0;

 psy->supplied_from = devm_kmalloc_array(&psy->dev, nval,
      sizeof(char *), GFP_KERNEL);
 if (!psy->supplied_from)
  return -ENOMEM;

 ret = device_property_read_string_array(psy->dev.parent,
  "supplied-from", (const char **)psy->supplied_from, nval);
 if (ret < 0)
  return ret;

 psy->num_supplies = nval;

 return 0;
}
