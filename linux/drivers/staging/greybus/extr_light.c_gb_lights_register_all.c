
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_lights {int lights_count; int lights_lock; int * lights; struct gb_connection* connection; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int gb_lights_light_register (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gb_lights_register_all(struct gb_lights *glights)
{
 struct gb_connection *connection = glights->connection;
 int ret = 0;
 int i;

 mutex_lock(&glights->lights_lock);
 for (i = 0; i < glights->lights_count; i++) {
  ret = gb_lights_light_register(&glights->lights[i]);
  if (ret < 0) {
   dev_err(&connection->bundle->dev,
    "Fail to enable lights device\n");
   break;
  }
 }

 mutex_unlock(&glights->lights_lock);
 return ret;
}
