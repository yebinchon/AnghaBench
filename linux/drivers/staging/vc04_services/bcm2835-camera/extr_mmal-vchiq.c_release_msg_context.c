
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_instance {int context_map_lock; int context_map; } ;
struct mmal_msg_context {int handle; struct vchiq_mmal_instance* instance; } ;


 int idr_remove (int *,int ) ;
 int kfree (struct mmal_msg_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
release_msg_context(struct mmal_msg_context *msg_context)
{
 struct vchiq_mmal_instance *instance = msg_context->instance;

 mutex_lock(&instance->context_map_lock);
 idr_remove(&instance->context_map, msg_context->handle);
 mutex_unlock(&instance->context_map_lock);
 kfree(msg_context);
}
