
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_lights {int lights_count; int lights_lock; struct gb_lights* lights; } ;


 int gb_lights_light_release (struct gb_lights*) ;
 int kfree (struct gb_lights*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gb_lights_release(struct gb_lights *glights)
{
 int i;

 if (!glights)
  return;

 mutex_lock(&glights->lights_lock);
 if (!glights->lights)
  goto free_glights;

 for (i = 0; i < glights->lights_count; i++)
  gb_lights_light_release(&glights->lights[i]);

 kfree(glights->lights);

free_glights:
 mutex_unlock(&glights->lights_lock);
 mutex_destroy(&glights->lights_lock);
 kfree(glights);
}
