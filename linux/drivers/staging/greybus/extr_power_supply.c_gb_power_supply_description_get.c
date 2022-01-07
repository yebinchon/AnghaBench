
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply_get_description_response {int properties_count; int type; int serial_number; int model; int manufacturer; } ;
struct gb_power_supply_get_description_request {int psy_id; } ;
struct gb_power_supply {int properties_count; int type; void* serial_number; void* model_name; void* manufacturer; int id; } ;
struct gb_connection {int dummy; } ;
typedef int resp ;
typedef int req ;


 int ENOMEM ;
 int GB_POWER_SUPPLY_TYPE_GET_DESCRIPTION ;
 int GFP_KERNEL ;
 int PROP_MAX ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_power_supply_get_description_request*,int,struct gb_power_supply_get_description_response*,int) ;
 struct gb_connection* get_conn_from_psy (struct gb_power_supply*) ;
 void* kstrndup (int ,int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int gb_power_supply_description_get(struct gb_power_supply *gbpsy)
{
 struct gb_connection *connection = get_conn_from_psy(gbpsy);
 struct gb_power_supply_get_description_request req;
 struct gb_power_supply_get_description_response resp;
 int ret;

 req.psy_id = gbpsy->id;

 ret = gb_operation_sync(connection,
    GB_POWER_SUPPLY_TYPE_GET_DESCRIPTION,
    &req, sizeof(req), &resp, sizeof(resp));
 if (ret < 0)
  return ret;

 gbpsy->manufacturer = kstrndup(resp.manufacturer, PROP_MAX, GFP_KERNEL);
 if (!gbpsy->manufacturer)
  return -ENOMEM;
 gbpsy->model_name = kstrndup(resp.model, PROP_MAX, GFP_KERNEL);
 if (!gbpsy->model_name)
  return -ENOMEM;
 gbpsy->serial_number = kstrndup(resp.serial_number, PROP_MAX,
           GFP_KERNEL);
 if (!gbpsy->serial_number)
  return -ENOMEM;

 gbpsy->type = le16_to_cpu(resp.type);
 gbpsy->properties_count = resp.properties_count;

 return 0;
}
