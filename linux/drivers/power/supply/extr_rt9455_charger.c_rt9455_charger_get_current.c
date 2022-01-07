
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct rt9455_info {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int F_ICHRG ;
 int dev_err (int *,char*) ;
 int rt9455_get_field_val (struct rt9455_info*,int ,int ,int ,int*) ;
 int rt9455_ichrg_values ;

__attribute__((used)) static int rt9455_charger_get_current(struct rt9455_info *info,
          union power_supply_propval *val)
{
 int curr;
 int ret;

 ret = rt9455_get_field_val(info, F_ICHRG,
       rt9455_ichrg_values,
       ARRAY_SIZE(rt9455_ichrg_values),
       &curr);
 if (ret) {
  dev_err(&info->client->dev, "Failed to read ICHRG value\n");
  return ret;
 }

 val->intval = curr;

 return 0;
}
