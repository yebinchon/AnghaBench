
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vchiq_mmal_instance {int dummy; } ;
struct TYPE_13__ {unsigned long buffer_used; int buffer_to_host_work; int pts; int dts; TYPE_1__* buffer; } ;
struct TYPE_14__ {TYPE_6__ bulk; } ;
struct mmal_msg_context {TYPE_7__ u; TYPE_5__* instance; } ;
struct TYPE_9__ {unsigned long length; int pts; int dts; } ;
struct TYPE_10__ {TYPE_2__ buffer_header; } ;
struct TYPE_11__ {TYPE_3__ buffer_from_host; } ;
struct mmal_msg {TYPE_4__ u; } ;
struct TYPE_12__ {int bulk_wq; } ;
struct TYPE_8__ {unsigned long buffer_size; } ;


 int EINVAL ;
 int pr_err (char*) ;
 int pr_warn (char*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int bulk_receive(struct vchiq_mmal_instance *instance,
   struct mmal_msg *msg,
   struct mmal_msg_context *msg_context)
{
 unsigned long rd_len;

 rd_len = msg->u.buffer_from_host.buffer_header.length;

 if (!msg_context->u.bulk.buffer) {
  pr_err("bulk.buffer not configured - error in buffer_from_host\n");
  return -EINVAL;
 }


 if (rd_len > msg_context->u.bulk.buffer->buffer_size) {
  rd_len = msg_context->u.bulk.buffer->buffer_size;
  pr_warn("short read as not enough receive buffer space\n");



 }


 msg_context->u.bulk.buffer_used = rd_len;
 msg_context->u.bulk.dts = msg->u.buffer_from_host.buffer_header.dts;
 msg_context->u.bulk.pts = msg->u.buffer_from_host.buffer_header.pts;

 queue_work(msg_context->instance->bulk_wq,
     &msg_context->u.bulk.buffer_to_host_work);

 return 0;
}
