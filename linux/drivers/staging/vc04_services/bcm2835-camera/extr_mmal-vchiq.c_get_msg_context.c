
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_instance {int context_map_lock; int context_map; } ;
struct mmal_msg_context {int handle; struct vchiq_mmal_instance* instance; } ;


 int ENOMEM ;
 struct mmal_msg_context* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int idr_alloc (int *,struct mmal_msg_context*,int ,int ,int ) ;
 int kfree (struct mmal_msg_context*) ;
 struct mmal_msg_context* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct mmal_msg_context *
get_msg_context(struct vchiq_mmal_instance *instance)
{
 struct mmal_msg_context *msg_context;
 int handle;


 msg_context = kzalloc(sizeof(*msg_context), GFP_KERNEL);

 if (!msg_context)
  return ERR_PTR(-ENOMEM);





 mutex_lock(&instance->context_map_lock);
 handle = idr_alloc(&instance->context_map, msg_context,
      0, 0, GFP_KERNEL);
 mutex_unlock(&instance->context_map_lock);

 if (handle < 0) {
  kfree(msg_context);
  return ERR_PTR(handle);
 }

 msg_context->instance = instance;
 msg_context->handle = handle;

 return msg_context;
}
