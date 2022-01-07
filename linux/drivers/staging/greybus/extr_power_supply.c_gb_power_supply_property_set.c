
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply_set_property_request {int prop_val; int property; int psy_id; } ;
struct gb_power_supply_prop {int val; int gb_prop; } ;
struct gb_power_supply {int id; } ;
struct gb_connection {int bundle; } ;
typedef int s32 ;
typedef int req ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int GB_POWER_SUPPLY_TYPE_SET_PROPERTY ;
 int cpu_to_le32 (int ) ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_power_supply_set_property_request*,int,int *,int ) ;
 int gb_pm_runtime_get_sync (int ) ;
 int gb_pm_runtime_put_autosuspend (int ) ;
 struct gb_connection* get_conn_from_psy (struct gb_power_supply*) ;
 struct gb_power_supply_prop* get_psy_prop (struct gb_power_supply*,int) ;

__attribute__((used)) static int gb_power_supply_property_set(struct gb_power_supply *gbpsy,
     enum power_supply_property psp,
     int val)
{
 struct gb_connection *connection = get_conn_from_psy(gbpsy);
 struct gb_power_supply_prop *prop;
 struct gb_power_supply_set_property_request req;
 int ret;

 ret = gb_pm_runtime_get_sync(connection->bundle);
 if (ret)
  return ret;

 prop = get_psy_prop(gbpsy, psp);
 if (!prop) {
  ret = -EINVAL;
  goto out;
 }

 req.psy_id = gbpsy->id;
 req.property = prop->gb_prop;
 req.prop_val = cpu_to_le32((s32)val);

 ret = gb_operation_sync(connection, GB_POWER_SUPPLY_TYPE_SET_PROPERTY,
    &req, sizeof(req), ((void*)0), 0);
 if (ret < 0)
  goto out;


 prop->val = val;

out:
 gb_pm_runtime_put_autosuspend(connection->bundle);
 return ret;
}
