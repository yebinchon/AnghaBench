
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supplies {int connection; } ;
struct gb_bundle {int dummy; } ;


 int _gb_power_supplies_release (struct gb_power_supplies*) ;
 int gb_connection_destroy (int ) ;
 int gb_connection_disable (int ) ;
 struct gb_power_supplies* greybus_get_drvdata (struct gb_bundle*) ;

__attribute__((used)) static void gb_power_supply_disconnect(struct gb_bundle *bundle)
{
 struct gb_power_supplies *supplies = greybus_get_drvdata(bundle);

 gb_connection_disable(supplies->connection);
 gb_connection_destroy(supplies->connection);

 _gb_power_supplies_release(supplies);
}
