
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int serial_number; int model_name; int manufacturer; } ;


 int POWER_SUPPLY_PROP_MANUFACTURER ;
 int POWER_SUPPLY_PROP_MODEL_NAME ;
 int POWER_SUPPLY_PROP_SERIAL_NUMBER ;
 int prop_append (struct gb_power_supply*,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void _gb_power_supply_append_props(struct gb_power_supply *gbpsy)
{
 if (strlen(gbpsy->manufacturer))
  prop_append(gbpsy, POWER_SUPPLY_PROP_MANUFACTURER);
 if (strlen(gbpsy->model_name))
  prop_append(gbpsy, POWER_SUPPLY_PROP_MODEL_NAME);
 if (strlen(gbpsy->serial_number))
  prop_append(gbpsy, POWER_SUPPLY_PROP_SERIAL_NUMBER);
}
