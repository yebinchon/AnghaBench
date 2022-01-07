
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vchiq_mmal_buffer_cb ;
struct vchiq_mmal_port {int buffer_cb; scalar_t__ enabled; } ;
struct vchiq_mmal_instance {int vchiq_mutex; } ;


 int EINTR ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int port_enable (struct vchiq_mmal_instance*,struct vchiq_mmal_port*) ;

int vchiq_mmal_port_enable(struct vchiq_mmal_instance *instance,
      struct vchiq_mmal_port *port,
      vchiq_mmal_buffer_cb buffer_cb)
{
 int ret;

 if (mutex_lock_interruptible(&instance->vchiq_mutex))
  return -EINTR;


 if (port->enabled) {
  ret = 0;
  goto unlock;
 }

 port->buffer_cb = buffer_cb;

 ret = port_enable(instance, port);

unlock:
 mutex_unlock(&instance->vchiq_mutex);

 return ret;
}
