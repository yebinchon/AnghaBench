
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;



__attribute__((used)) static int bq27xxx_simple_value(int value,
    union power_supply_propval *val)
{
 if (value < 0)
  return value;

 val->intval = value;

 return 0;
}
