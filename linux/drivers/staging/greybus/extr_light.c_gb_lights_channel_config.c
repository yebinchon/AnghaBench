
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {char* name; int max_brightness; } ;
struct gb_lights_get_channel_config_response {int max_brightness; int mode_name; int color_name; int color; int flags; int mode; } ;
struct gb_lights_get_channel_config_request {int channel_id; int light_id; } ;
struct gb_light {int has_flash; int name; int id; } ;
struct gb_connection {int dummy; } ;
struct gb_channel {void* mode_name; void* color_name; struct led_classdev* led; void* color; void* flags; void* mode; struct gb_light* light; int id; } ;
typedef int req ;
typedef int conf ;


 int ENOMEM ;
 int GB_LIGHTS_TYPE_GET_CHANNEL_CONFIG ;
 int GFP_KERNEL ;
 int NAMES_MAX ;
 int channel_attr_groups_set (struct gb_channel*,struct led_classdev*) ;
 int gb_lights_channel_flash_config (struct gb_channel*) ;
 int gb_lights_led_operations_set (struct gb_channel*,struct led_classdev*) ;
 int gb_operation_sync (struct gb_connection*,int ,struct gb_lights_get_channel_config_request*,int,struct gb_lights_get_channel_config_response*,int) ;
 struct led_classdev* get_channel_cdev (struct gb_channel*) ;
 struct gb_connection* get_conn_from_light (struct gb_light*) ;
 int is_channel_flash (struct gb_channel*) ;
 char* kasprintf (int ,char*,int ,void*,void*) ;
 void* kstrndup (int ,int ,int ) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static int gb_lights_channel_config(struct gb_light *light,
        struct gb_channel *channel)
{
 struct gb_lights_get_channel_config_response conf;
 struct gb_lights_get_channel_config_request req;
 struct gb_connection *connection = get_conn_from_light(light);
 struct led_classdev *cdev = get_channel_cdev(channel);
 char *name;
 int ret;

 req.light_id = light->id;
 req.channel_id = channel->id;

 ret = gb_operation_sync(connection, GB_LIGHTS_TYPE_GET_CHANNEL_CONFIG,
    &req, sizeof(req), &conf, sizeof(conf));
 if (ret < 0)
  return ret;

 channel->light = light;
 channel->mode = le32_to_cpu(conf.mode);
 channel->flags = le32_to_cpu(conf.flags);
 channel->color = le32_to_cpu(conf.color);
 channel->color_name = kstrndup(conf.color_name, NAMES_MAX, GFP_KERNEL);
 if (!channel->color_name)
  return -ENOMEM;
 channel->mode_name = kstrndup(conf.mode_name, NAMES_MAX, GFP_KERNEL);
 if (!channel->mode_name)
  return -ENOMEM;

 channel->led = cdev;

 name = kasprintf(GFP_KERNEL, "%s:%s:%s", light->name,
    channel->color_name, channel->mode_name);
 if (!name)
  return -ENOMEM;

 cdev->name = name;

 cdev->max_brightness = conf.max_brightness;

 ret = channel_attr_groups_set(channel, cdev);
 if (ret < 0)
  return ret;

 gb_lights_led_operations_set(channel, cdev);






 if (!is_channel_flash(channel))
  return ret;

 light->has_flash = 1;

 return gb_lights_channel_flash_config(channel);
}
