
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_lights {int lights_count; int lights_lock; int lights; struct gb_connection* connection; } ;
struct gb_light {int dummy; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int gb_lights_get_count (struct gb_lights*) ;
 int gb_lights_light_config (struct gb_lights*,int) ;
 int kcalloc (int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_lights_create_all(struct gb_lights *glights)
{
 struct gb_connection *connection = glights->connection;
 int ret;
 int i;

 mutex_lock(&glights->lights_lock);
 ret = gb_lights_get_count(glights);
 if (ret < 0)
  goto out;

 glights->lights = kcalloc(glights->lights_count,
      sizeof(struct gb_light), GFP_KERNEL);
 if (!glights->lights) {
  ret = -ENOMEM;
  goto out;
 }

 for (i = 0; i < glights->lights_count; i++) {
  ret = gb_lights_light_config(glights, i);
  if (ret < 0) {
   dev_err(&connection->bundle->dev,
    "Fail to configure lights device\n");
   goto out;
  }
 }

out:
 mutex_unlock(&glights->lights_lock);
 return ret;
}
