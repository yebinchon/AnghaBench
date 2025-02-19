
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_port {int enabled; } ;
struct vchiq_mmal_instance {int vchiq_mutex; } ;


 int EINTR ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int port_disable (struct vchiq_mmal_instance*,struct vchiq_mmal_port*) ;

int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
       struct vchiq_mmal_port *port)
{
 int ret;

 if (mutex_lock_interruptible(&instance->vchiq_mutex))
  return -EINTR;

 if (!port->enabled) {
  mutex_unlock(&instance->vchiq_mutex);
  return 0;
 }

 ret = port_disable(instance, port);

 mutex_unlock(&instance->vchiq_mutex);

 return ret;
}
