
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vchiq_mmal_instance {int dummy; } ;
struct TYPE_7__ {int buffer_used; TYPE_1__* buffer; } ;
struct TYPE_8__ {TYPE_2__ bulk; } ;
struct mmal_msg_context {TYPE_3__ u; } ;
struct TYPE_10__ {int payload_in_message; int short_data; } ;
struct TYPE_9__ {TYPE_5__ buffer_from_host; } ;
struct mmal_msg {TYPE_4__ u; } ;
struct TYPE_6__ {int buffer; } ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int inline_receive(struct vchiq_mmal_instance *instance,
     struct mmal_msg *msg,
     struct mmal_msg_context *msg_context)
{
 memcpy(msg_context->u.bulk.buffer->buffer,
        msg->u.buffer_from_host.short_data,
        msg->u.buffer_from_host.payload_in_message);

 msg_context->u.bulk.buffer_used =
     msg->u.buffer_from_host.payload_in_message;

 return 0;
}
