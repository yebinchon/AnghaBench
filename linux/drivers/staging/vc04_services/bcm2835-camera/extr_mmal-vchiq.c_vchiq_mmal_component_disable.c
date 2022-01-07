
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_instance {int vchiq_mutex; } ;
struct vchiq_mmal_component {scalar_t__ enabled; } ;


 int EINTR ;
 int disable_component (struct vchiq_mmal_instance*,struct vchiq_mmal_component*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int vchiq_mmal_component_disable(struct vchiq_mmal_instance *instance,
     struct vchiq_mmal_component *component)
{
 int ret;

 if (mutex_lock_interruptible(&instance->vchiq_mutex))
  return -EINTR;

 if (!component->enabled) {
  mutex_unlock(&instance->vchiq_mutex);
  return 0;
 }

 ret = disable_component(instance, component);
 if (ret == 0)
  component->enabled = 0;

 mutex_unlock(&instance->vchiq_mutex);

 return ret;
}
