
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int props; int props_raw; int manufacturer; int model_name; int serial_number; } ;


 int kfree (int ) ;

__attribute__((used)) static void _gb_power_supply_free(struct gb_power_supply *gbpsy)
{
 kfree(gbpsy->serial_number);
 kfree(gbpsy->model_name);
 kfree(gbpsy->manufacturer);
 kfree(gbpsy->props_raw);
 kfree(gbpsy->props);
}
