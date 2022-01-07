
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vchiq_mmal_port {int dummy; } ;
struct vchiq_mmal_instance {int vchiq_mutex; } ;


 int EINTR ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int port_parameter_set (struct vchiq_mmal_instance*,struct vchiq_mmal_port*,int ,void*,int ) ;

int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
      struct vchiq_mmal_port *port,
      u32 parameter, void *value, u32 value_size)
{
 int ret;

 if (mutex_lock_interruptible(&instance->vchiq_mutex))
  return -EINTR;

 ret = port_parameter_set(instance, port, parameter, value, value_size);

 mutex_unlock(&instance->vchiq_mutex);

 return ret;
}
