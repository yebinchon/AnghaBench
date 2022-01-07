
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct gb_operation {size_t type; struct gb_message* request; struct gb_connection* connection; } ;
struct gb_message {int payload_size; struct gb_lights_event_request* payload; } ;
struct gb_lights_event_request {size_t light_id; size_t event; } ;
struct gb_lights {size_t lights_count; int lights_lock; struct gb_light* lights; } ;
struct gb_light {int ready; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 size_t GB_LIGHTS_LIGHT_CONFIG ;
 size_t GB_LIGHTS_TYPE_EVENT ;
 int dev_err (struct device*,char*,size_t,...) ;
 struct gb_lights* gb_connection_get_data (struct gb_connection*) ;
 int gb_lights_light_config (struct gb_lights*,size_t) ;
 int gb_lights_light_register (struct gb_light*) ;
 int gb_lights_light_release (struct gb_light*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_lights_request_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct device *dev = &connection->bundle->dev;
 struct gb_lights *glights = gb_connection_get_data(connection);
 struct gb_light *light;
 struct gb_message *request;
 struct gb_lights_event_request *payload;
 int ret = 0;
 u8 light_id;
 u8 event;

 if (op->type != GB_LIGHTS_TYPE_EVENT) {
  dev_err(dev, "Unsupported unsolicited event: %u\n", op->type);
  return -EINVAL;
 }

 request = op->request;

 if (request->payload_size < sizeof(*payload)) {
  dev_err(dev, "Wrong event size received (%zu < %zu)\n",
   request->payload_size, sizeof(*payload));
  return -EINVAL;
 }

 payload = request->payload;
 light_id = payload->light_id;

 if (light_id >= glights->lights_count ||
     !glights->lights[light_id].ready) {
  dev_err(dev, "Event received for unconfigured light id: %d\n",
   light_id);
  return -EINVAL;
 }

 event = payload->event;

 if (event & GB_LIGHTS_LIGHT_CONFIG) {
  light = &glights->lights[light_id];

  mutex_lock(&glights->lights_lock);
  gb_lights_light_release(light);
  ret = gb_lights_light_config(glights, light_id);
  if (!ret)
   ret = gb_lights_light_register(light);
  if (ret < 0)
   gb_lights_light_release(light);
  mutex_unlock(&glights->lights_lock);
 }

 return ret;
}
