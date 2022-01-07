
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct gb_power_supply_event_request {size_t psy_id; size_t event; } ;
struct gb_power_supply {int cache_invalid; int update_interval; int registered; } ;
struct gb_power_supplies {size_t supplies_count; int supplies_lock; struct gb_power_supply* supply; } ;
struct gb_operation {size_t type; struct gb_message* request; struct gb_connection* connection; } ;
struct gb_message {int payload_size; struct gb_power_supply_event_request* payload; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ESHUTDOWN ;
 size_t GB_POWER_SUPPLY_TYPE_EVENT ;
 size_t GB_POWER_SUPPLY_UPDATE ;
 int dev_err (int *,char*,size_t,...) ;
 struct gb_power_supplies* gb_connection_get_data (struct gb_connection*) ;
 int gb_power_supply_status_update (struct gb_power_supply*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_supplies_request_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct gb_power_supplies *supplies = gb_connection_get_data(connection);
 struct gb_power_supply *gbpsy;
 struct gb_message *request;
 struct gb_power_supply_event_request *payload;
 u8 psy_id;
 u8 event;
 int ret = 0;

 if (op->type != GB_POWER_SUPPLY_TYPE_EVENT) {
  dev_err(&connection->bundle->dev,
   "Unsupported unsolicited event: %u\n", op->type);
  return -EINVAL;
 }

 request = op->request;

 if (request->payload_size < sizeof(*payload)) {
  dev_err(&connection->bundle->dev,
   "Wrong event size received (%zu < %zu)\n",
   request->payload_size, sizeof(*payload));
  return -EINVAL;
 }

 payload = request->payload;
 psy_id = payload->psy_id;
 mutex_lock(&supplies->supplies_lock);
 if (psy_id >= supplies->supplies_count ||
     !supplies->supply[psy_id].registered) {
  dev_err(&connection->bundle->dev,
   "Event received for unconfigured power_supply id: %d\n",
   psy_id);
  ret = -EINVAL;
  goto out_unlock;
 }

 event = payload->event;




 gbpsy = &supplies->supply[psy_id];
 if (!gbpsy->update_interval) {
  ret = -ESHUTDOWN;
  goto out_unlock;
 }

 if (event & GB_POWER_SUPPLY_UPDATE) {





  gbpsy->cache_invalid = 1;
  gb_power_supply_status_update(gbpsy);
 }

out_unlock:
 mutex_unlock(&supplies->supplies_lock);
 return ret;
}
