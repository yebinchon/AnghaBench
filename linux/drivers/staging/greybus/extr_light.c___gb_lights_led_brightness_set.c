
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct gb_lights_set_brightness_request {scalar_t__ brightness; int channel_id; int light_id; } ;
struct gb_connection {struct gb_bundle* bundle; } ;
struct gb_channel {int active; int lock; TYPE_2__* led; int id; TYPE_1__* light; } ;
struct gb_bundle {int dummy; } ;
typedef int req ;
struct TYPE_4__ {scalar_t__ brightness; } ;
struct TYPE_3__ {int id; } ;


 int GB_LIGHTS_TYPE_SET_BRIGHTNESS ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_lights_set_brightness_request*,int,int *,int ) ;
 int gb_pm_runtime_get_sync (struct gb_bundle*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 struct gb_connection* get_conn_from_channel (struct gb_channel*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int __gb_lights_led_brightness_set(struct gb_channel *channel)
{
 struct gb_lights_set_brightness_request req;
 struct gb_connection *connection = get_conn_from_channel(channel);
 struct gb_bundle *bundle = connection->bundle;
 bool old_active;
 int ret;

 mutex_lock(&channel->lock);
 ret = gb_pm_runtime_get_sync(bundle);
 if (ret < 0)
  goto out_unlock;

 old_active = channel->active;

 req.light_id = channel->light->id;
 req.channel_id = channel->id;
 req.brightness = (u8)channel->led->brightness;

 ret = gb_operation_sync(connection, GB_LIGHTS_TYPE_SET_BRIGHTNESS,
    &req, sizeof(req), ((void*)0), 0);
 if (ret < 0)
  goto out_pm_put;

 if (channel->led->brightness)
  channel->active = 1;
 else
  channel->active = 0;


 if (!old_active && channel->active)
  goto out_unlock;





 if (old_active && !channel->active)
  gb_pm_runtime_put_autosuspend(bundle);

out_pm_put:
 gb_pm_runtime_put_autosuspend(bundle);
out_unlock:
 mutex_unlock(&channel->lock);

 return ret;
}
