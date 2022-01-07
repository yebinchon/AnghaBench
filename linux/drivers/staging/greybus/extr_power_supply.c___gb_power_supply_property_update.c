
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply_prop {int val; int previous_val; int gb_prop; } ;
struct gb_power_supply_get_property_response {int prop_val; } ;
struct gb_power_supply_get_property_request {int property; int psy_id; } ;
struct gb_power_supply {int id; } ;
struct gb_connection {int dummy; } ;
typedef int resp ;
typedef int req ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int GB_POWER_SUPPLY_TYPE_GET_PROPERTY ;
 int check_changed (struct gb_power_supply*,struct gb_power_supply_prop*) ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_power_supply_get_property_request*,int,struct gb_power_supply_get_property_response*,int) ;
 struct gb_connection* get_conn_from_psy (struct gb_power_supply*) ;
 struct gb_power_supply_prop* get_psy_prop (struct gb_power_supply*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int __gb_power_supply_property_update(struct gb_power_supply *gbpsy,
          enum power_supply_property psp)
{
 struct gb_connection *connection = get_conn_from_psy(gbpsy);
 struct gb_power_supply_prop *prop;
 struct gb_power_supply_get_property_request req;
 struct gb_power_supply_get_property_response resp;
 int val;
 int ret;

 prop = get_psy_prop(gbpsy, psp);
 if (!prop)
  return -EINVAL;
 req.psy_id = gbpsy->id;
 req.property = prop->gb_prop;

 ret = gb_operation_sync(connection, GB_POWER_SUPPLY_TYPE_GET_PROPERTY,
    &req, sizeof(req), &resp, sizeof(resp));
 if (ret < 0)
  return ret;

 val = le32_to_cpu(resp.prop_val);
 if (val == prop->val)
  return 0;

 prop->previous_val = prop->val;
 prop->val = val;

 check_changed(gbpsy, prop);

 return 0;
}
