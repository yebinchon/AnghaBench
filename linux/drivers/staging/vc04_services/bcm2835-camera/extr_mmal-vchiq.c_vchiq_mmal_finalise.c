
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_instance {int context_map; int bulk_scratch; int bulk_wq; int vchiq_mutex; int handle; } ;


 int EINTR ;
 int EINVAL ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int idr_destroy (int *) ;
 int kfree (struct vchiq_mmal_instance*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int vchi_service_close (int ) ;
 int vchi_service_use (int ) ;
 int vfree (int ) ;

int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
{
 int status = 0;

 if (!instance)
  return -EINVAL;

 if (mutex_lock_interruptible(&instance->vchiq_mutex))
  return -EINTR;

 vchi_service_use(instance->handle);

 status = vchi_service_close(instance->handle);
 if (status != 0)
  pr_err("mmal-vchiq: VCHIQ close failed\n");

 mutex_unlock(&instance->vchiq_mutex);

 flush_workqueue(instance->bulk_wq);
 destroy_workqueue(instance->bulk_wq);

 vfree(instance->bulk_scratch);

 idr_destroy(&instance->context_map);

 kfree(instance);

 return status;
}
