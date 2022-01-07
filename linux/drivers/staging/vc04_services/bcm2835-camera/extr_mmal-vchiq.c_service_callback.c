
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vchiq_mmal_instance {int handle; } ;
struct vchi_held_msg {int dummy; } ;
struct TYPE_5__ {int cmplt; int msg_len; struct mmal_msg* msg; struct vchi_held_msg msg_handle; } ;
struct TYPE_6__ {TYPE_2__ sync; } ;
struct mmal_msg_context {TYPE_3__ u; } ;
struct TYPE_4__ {int const context; int type; } ;
struct mmal_msg {TYPE_1__ h; } ;
typedef int VCHI_CALLBACK_REASON_T ;


 int DBG_DUMP_MSG (struct mmal_msg*,int ,char*) ;







 int VCHI_FLAGS_NONE ;
 int buffer_to_host_cb (struct vchiq_mmal_instance*,struct mmal_msg*,int ) ;
 int bulk_abort_cb (struct vchiq_mmal_instance*,void*) ;
 int bulk_receive_cb (struct vchiq_mmal_instance*,void*) ;
 int complete (int *) ;
 int event_to_host_cb (struct vchiq_mmal_instance*,struct mmal_msg*,int ) ;
 struct mmal_msg_context* lookup_msg_context (struct vchiq_mmal_instance*,int const) ;
 int pr_err (char*,...) ;
 int vchi_held_msg_release (struct vchi_held_msg*) ;
 int vchi_msg_hold (int ,void**,int *,int ,struct vchi_held_msg*) ;

__attribute__((used)) static void service_callback(void *param,
        const VCHI_CALLBACK_REASON_T reason,
        void *bulk_ctx)
{
 struct vchiq_mmal_instance *instance = param;
 int status;
 u32 msg_len;
 struct mmal_msg *msg;
 struct vchi_held_msg msg_handle;
 struct mmal_msg_context *msg_context;

 if (!instance) {
  pr_err("Message callback passed NULL instance\n");
  return;
 }

 switch (reason) {
 case 129:
  status = vchi_msg_hold(instance->handle, (void **)&msg,
           &msg_len, VCHI_FLAGS_NONE, &msg_handle);
  if (status) {
   pr_err("Unable to dequeue a message (%d)\n", status);
   break;
  }

  DBG_DUMP_MSG(msg, msg_len, "<<< reply message");


  switch (msg->h.type) {
  case 134:
   vchi_held_msg_release(&msg_handle);
   break;

  case 132:
   event_to_host_cb(instance, msg, msg_len);
   vchi_held_msg_release(&msg_handle);

   break;

  case 133:
   buffer_to_host_cb(instance, msg, msg_len);
   vchi_held_msg_release(&msg_handle);
   break;

  default:

   if (!msg->h.context) {
    pr_err("received message context was null!\n");
    vchi_held_msg_release(&msg_handle);
    break;
   }

   msg_context = lookup_msg_context(instance,
        msg->h.context);
   if (!msg_context) {
    pr_err("received invalid message context %u!\n",
           msg->h.context);
    vchi_held_msg_release(&msg_handle);
    break;
   }


   msg_context->u.sync.msg_handle = msg_handle;
   msg_context->u.sync.msg = msg;
   msg_context->u.sync.msg_len = msg_len;
   complete(&msg_context->u.sync.cmplt);
   break;
  }

  break;

 case 131:
  bulk_receive_cb(instance, bulk_ctx);
  break;

 case 130:
  bulk_abort_cb(instance, bulk_ctx);
  break;

 case 128:



  break;

 default:
  pr_err("Received unhandled message reason %d\n", reason);
  break;
 }
}
