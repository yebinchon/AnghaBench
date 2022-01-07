
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vchiq_mmal_instance {int vchiq_mutex; } ;


 int EINTR ;
 int get_version (struct vchiq_mmal_instance*,int *,int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int vchiq_mmal_version(struct vchiq_mmal_instance *instance,
         u32 *major_out, u32 *minor_out)
{
 int ret;

 if (mutex_lock_interruptible(&instance->vchiq_mutex))
  return -EINTR;

 ret = get_version(instance, major_out, minor_out);

 mutex_unlock(&instance->vchiq_mutex);

 return ret;
}
