
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_port {int dummy; } ;
struct vchiq_mmal_instance {int vchiq_mutex; } ;


 int EINTR ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int port_info_get (struct vchiq_mmal_instance*,struct vchiq_mmal_port*) ;
 int port_info_set (struct vchiq_mmal_instance*,struct vchiq_mmal_port*) ;

int vchiq_mmal_port_set_format(struct vchiq_mmal_instance *instance,
          struct vchiq_mmal_port *port)
{
 int ret;

 if (mutex_lock_interruptible(&instance->vchiq_mutex))
  return -EINTR;

 ret = port_info_set(instance, port);
 if (ret)
  goto release_unlock;


 ret = port_info_get(instance, port);

release_unlock:
 mutex_unlock(&instance->vchiq_mutex);

 return ret;
}
