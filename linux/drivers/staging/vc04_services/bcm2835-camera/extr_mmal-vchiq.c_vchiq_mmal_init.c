
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_instance {int bulk_scratch; int bulk_wq; int handle; int context_map; int context_map_lock; int vchiq_mutex; } ;
struct service_creation {struct vchiq_mmal_instance* callback_param; int callback; int service_id; int version; } ;
struct mmal_port {int dummy; } ;
struct mmal_msg_header {int dummy; } ;
struct mmal_msg {int dummy; } ;
typedef int VCHI_INSTANCE_T ;


 int BUILD_BUG_ON (int) ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MMAL_MSG_MAX_SIZE ;
 int PAGE_SIZE ;
 int VCHI_VERSION_EX (int ,int ) ;
 int VC_MMAL_MIN_VER ;
 int VC_MMAL_SERVER_NAME ;
 int VC_MMAL_VER ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int ) ;
 int idr_init_base (int *,int) ;
 int kfree (struct vchiq_mmal_instance*) ;
 struct vchiq_mmal_instance* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*,int) ;
 int service_callback ;
 int vchi_connect (int ) ;
 int vchi_initialise (int *) ;
 int vchi_service_close (int ) ;
 int vchi_service_open (int ,struct service_creation*,int *) ;
 int vchi_service_release (int ) ;
 int vfree (int ) ;
 int vmalloc (int ) ;

int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
{
 int status;
 struct vchiq_mmal_instance *instance;
 static VCHI_INSTANCE_T vchi_instance;
 struct service_creation params = {
  .version = VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
  .service_id = VC_MMAL_SERVER_NAME,
  .callback = service_callback,
  .callback_param = ((void*)0),
 };






 BUILD_BUG_ON(sizeof(struct mmal_msg_header) != 24);


 BUILD_BUG_ON(sizeof(struct mmal_msg) > MMAL_MSG_MAX_SIZE);


 BUILD_BUG_ON(sizeof(struct mmal_port) != 64);


 status = vchi_initialise(&vchi_instance);
 if (status) {
  pr_err("Failed to initialise VCHI instance (status=%d)\n",
         status);
  return -EIO;
 }

 status = vchi_connect(vchi_instance);
 if (status) {
  pr_err("Failed to connect VCHI instance (status=%d)\n", status);
  return -EIO;
 }

 instance = kzalloc(sizeof(*instance), GFP_KERNEL);

 if (!instance)
  return -ENOMEM;

 mutex_init(&instance->vchiq_mutex);

 instance->bulk_scratch = vmalloc(PAGE_SIZE);

 mutex_init(&instance->context_map_lock);
 idr_init_base(&instance->context_map, 1);

 params.callback_param = instance;

 instance->bulk_wq = alloc_ordered_workqueue("mmal-vchiq",
          WQ_MEM_RECLAIM);
 if (!instance->bulk_wq)
  goto err_free;

 status = vchi_service_open(vchi_instance, &params, &instance->handle);
 if (status) {
  pr_err("Failed to open VCHI service connection (status=%d)\n",
         status);
  goto err_close_services;
 }

 vchi_service_release(instance->handle);

 *out_instance = instance;

 return 0;

err_close_services:
 vchi_service_close(instance->handle);
 destroy_workqueue(instance->bulk_wq);
err_free:
 vfree(instance->bulk_scratch);
 kfree(instance);
 return -ENODEV;
}
