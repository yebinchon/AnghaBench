
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct power_supply_config {struct gb_power_supply* drv_data; } ;
struct TYPE_4__ {int property_is_writeable; int set_property; int get_property; int num_properties; int properties; int type; int name; } ;
struct gb_power_supply {int psy; TYPE_2__ desc; int props_raw; int type; int name; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_3__ {int dev; } ;


 int PTR_ERR_OR_ZERO (int ) ;
 struct gb_connection* get_conn_from_psy (struct gb_power_supply*) ;
 int get_property ;
 int power_supply_register (int *,TYPE_2__*,struct power_supply_config*) ;
 int property_is_writeable ;
 int set_property ;
 int total_props (struct gb_power_supply*) ;

__attribute__((used)) static int gb_power_supply_register(struct gb_power_supply *gbpsy)
{
 struct gb_connection *connection = get_conn_from_psy(gbpsy);
 struct power_supply_config cfg = {};

 cfg.drv_data = gbpsy;

 gbpsy->desc.name = gbpsy->name;
 gbpsy->desc.type = gbpsy->type;
 gbpsy->desc.properties = gbpsy->props_raw;
 gbpsy->desc.num_properties = total_props(gbpsy);
 gbpsy->desc.get_property = get_property;
 gbpsy->desc.set_property = set_property;
 gbpsy->desc.property_is_writeable = property_is_writeable;

 gbpsy->psy = power_supply_register(&connection->bundle->dev,
        &gbpsy->desc, &cfg);
 return PTR_ERR_OR_ZERO(gbpsy->psy);
}
