
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gb_lights_set_color_request {int color; int channel_id; int light_id; } ;
struct gb_connection {struct gb_bundle* bundle; } ;
struct gb_channel {int id; TYPE_1__* light; scalar_t__ releasing; } ;
struct gb_bundle {int dummy; } ;
typedef int req ;
struct TYPE_2__ {int id; } ;


 int ESHUTDOWN ;
 int GB_LIGHTS_TYPE_SET_COLOR ;
 int cpu_to_le32 (int ) ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_lights_set_color_request*,int,int *,int ) ;
 int gb_pm_runtime_get_sync (struct gb_bundle*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 struct gb_connection* get_conn_from_channel (struct gb_channel*) ;

__attribute__((used)) static int gb_lights_color_set(struct gb_channel *channel, u32 color)
{
 struct gb_connection *connection = get_conn_from_channel(channel);
 struct gb_bundle *bundle = connection->bundle;
 struct gb_lights_set_color_request req;
 int ret;

 if (channel->releasing)
  return -ESHUTDOWN;

 ret = gb_pm_runtime_get_sync(bundle);
 if (ret < 0)
  return ret;

 req.light_id = channel->light->id;
 req.channel_id = channel->id;
 req.color = cpu_to_le32(color);
 ret = gb_operation_sync(connection, GB_LIGHTS_TYPE_SET_COLOR,
    &req, sizeof(req), ((void*)0), 0);

 gb_pm_runtime_put_autosuspend(bundle);

 return ret;
}
