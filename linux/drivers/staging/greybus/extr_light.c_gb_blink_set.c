
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {int dummy; } ;
struct gb_lights_blink_request {void* time_off_ms; void* time_on_ms; int channel_id; int light_id; } ;
struct gb_connection {struct gb_bundle* bundle; } ;
struct gb_channel {int active; int lock; int id; TYPE_1__* light; scalar_t__ releasing; } ;
struct gb_bundle {int dummy; } ;
typedef int req ;
struct TYPE_2__ {int id; } ;


 int EINVAL ;
 int ESHUTDOWN ;
 int GB_LIGHTS_TYPE_SET_BLINK ;
 void* cpu_to_le16 (unsigned long) ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_lights_blink_request*,int,int *,int ) ;
 int gb_pm_runtime_get_sync (struct gb_bundle*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 struct gb_channel* get_channel_from_cdev (struct led_classdev*) ;
 struct gb_connection* get_conn_from_channel (struct gb_channel*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_blink_set(struct led_classdev *cdev, unsigned long *delay_on,
   unsigned long *delay_off)
{
 struct gb_channel *channel = get_channel_from_cdev(cdev);
 struct gb_connection *connection = get_conn_from_channel(channel);
 struct gb_bundle *bundle = connection->bundle;
 struct gb_lights_blink_request req;
 bool old_active;
 int ret;

 if (channel->releasing)
  return -ESHUTDOWN;

 if (!delay_on || !delay_off)
  return -EINVAL;

 mutex_lock(&channel->lock);
 ret = gb_pm_runtime_get_sync(bundle);
 if (ret < 0)
  goto out_unlock;

 old_active = channel->active;

 req.light_id = channel->light->id;
 req.channel_id = channel->id;
 req.time_on_ms = cpu_to_le16(*delay_on);
 req.time_off_ms = cpu_to_le16(*delay_off);

 ret = gb_operation_sync(connection, GB_LIGHTS_TYPE_SET_BLINK, &req,
    sizeof(req), ((void*)0), 0);
 if (ret < 0)
  goto out_pm_put;

 if (*delay_on)
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
