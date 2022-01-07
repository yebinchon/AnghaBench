
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmal_msg_context {int dummy; } ;
struct mmal_buffer {struct mmal_msg_context* msg_context; } ;


 int release_msg_context (struct mmal_msg_context*) ;

int mmal_vchi_buffer_cleanup(struct mmal_buffer *buf)
{
 struct mmal_msg_context *msg_context = buf->msg_context;

 if (msg_context)
  release_msg_context(msg_context);
 buf->msg_context = ((void*)0);

 return 0;
}
