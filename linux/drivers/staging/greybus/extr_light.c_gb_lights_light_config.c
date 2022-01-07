
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct gb_lights_get_light_config_response {int channel_count; int name; } ;
struct gb_lights_get_light_config_request {size_t id; } ;
struct gb_lights {int connection; struct gb_light* lights; } ;
struct gb_light {size_t id; int channels_count; TYPE_1__* channels; int name; struct gb_lights* glights; } ;
struct gb_channel {int dummy; } ;
typedef int req ;
typedef int conf ;
struct TYPE_3__ {int id; } ;


 int EINVAL ;
 int ENOMEM ;
 int GB_LIGHTS_TYPE_GET_LIGHT_CONFIG ;
 int GFP_KERNEL ;
 int NAMES_MAX ;
 int gb_lights_channel_config (struct gb_light*,TYPE_1__*) ;
 int gb_operation_sync (int ,int ,struct gb_lights_get_light_config_request*,int,struct gb_lights_get_light_config_response*,int) ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int kstrndup (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int gb_lights_light_config(struct gb_lights *glights, u8 id)
{
 struct gb_light *light = &glights->lights[id];
 struct gb_lights_get_light_config_request req;
 struct gb_lights_get_light_config_response conf;
 int ret;
 int i;

 light->glights = glights;
 light->id = id;

 req.id = id;

 ret = gb_operation_sync(glights->connection,
    GB_LIGHTS_TYPE_GET_LIGHT_CONFIG,
    &req, sizeof(req), &conf, sizeof(conf));
 if (ret < 0)
  return ret;

 if (!conf.channel_count)
  return -EINVAL;
 if (!strlen(conf.name))
  return -EINVAL;

 light->channels_count = conf.channel_count;
 light->name = kstrndup(conf.name, NAMES_MAX, GFP_KERNEL);

 light->channels = kcalloc(light->channels_count,
      sizeof(struct gb_channel), GFP_KERNEL);
 if (!light->channels)
  return -ENOMEM;


 for (i = 0; i < light->channels_count; i++) {
  light->channels[i].id = i;
  ret = gb_lights_channel_config(light, &light->channels[i]);
  if (ret < 0)
   return ret;
 }

 return 0;
}
