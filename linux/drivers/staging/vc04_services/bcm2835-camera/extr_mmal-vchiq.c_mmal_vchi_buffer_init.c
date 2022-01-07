
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_mmal_instance {int dummy; } ;
struct mmal_msg_context {int dummy; } ;
struct mmal_buffer {struct mmal_msg_context* msg_context; } ;


 scalar_t__ IS_ERR (struct mmal_msg_context*) ;
 int PTR_ERR (struct mmal_msg_context*) ;
 struct mmal_msg_context* get_msg_context (struct vchiq_mmal_instance*) ;

int mmal_vchi_buffer_init(struct vchiq_mmal_instance *instance,
     struct mmal_buffer *buf)
{
 struct mmal_msg_context *msg_context = get_msg_context(instance);

 if (IS_ERR(msg_context))
  return (PTR_ERR(msg_context));

 buf->msg_context = msg_context;
 return 0;
}
