
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vchiq_mmal_instance {int handle; } ;
struct vchi_held_msg {int dummy; } ;
struct mmal_msg_header {int dummy; } ;
struct TYPE_5__ {struct vchi_held_msg msg_handle; struct mmal_msg* msg; int cmplt; } ;
struct TYPE_6__ {TYPE_2__ sync; } ;
struct mmal_msg_context {TYPE_3__ u; int handle; } ;
struct TYPE_4__ {scalar_t__ status; int context; int magic; } ;
struct mmal_msg {TYPE_1__ h; } ;


 int DBG_DUMP_MSG (struct mmal_msg*,int,char*) ;
 int EINVAL ;
 int ETIME ;
 int HZ ;
 scalar_t__ IS_ERR (struct mmal_msg_context*) ;
 int MMAL_MAGIC ;
 int MMAL_MSG_MAX_SIZE ;
 int PTR_ERR (struct mmal_msg_context*) ;
 struct mmal_msg_context* get_msg_context (struct vchiq_mmal_instance*) ;
 int init_completion (int *) ;
 int pr_err (char*,...) ;
 int release_msg_context (struct mmal_msg_context*) ;
 int vchi_queue_kernel_message (int ,struct mmal_msg*,int) ;
 int vchi_service_release (int ) ;
 int vchi_service_use (int ) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
         struct mmal_msg *msg,
         unsigned int payload_len,
         struct mmal_msg **msg_out,
         struct vchi_held_msg *msg_handle_out)
{
 struct mmal_msg_context *msg_context;
 int ret;
 unsigned long timeout;


 if (payload_len >
     (MMAL_MSG_MAX_SIZE - sizeof(struct mmal_msg_header))) {
  pr_err("payload length %d exceeds max:%d\n", payload_len,
         (int)(MMAL_MSG_MAX_SIZE -
       sizeof(struct mmal_msg_header)));
  return -EINVAL;
 }

 msg_context = get_msg_context(instance);
 if (IS_ERR(msg_context))
  return PTR_ERR(msg_context);

 init_completion(&msg_context->u.sync.cmplt);

 msg->h.magic = MMAL_MAGIC;
 msg->h.context = msg_context->handle;
 msg->h.status = 0;

 DBG_DUMP_MSG(msg, (sizeof(struct mmal_msg_header) + payload_len),
       ">>> sync message");

 vchi_service_use(instance->handle);

 ret = vchi_queue_kernel_message(instance->handle,
     msg,
     sizeof(struct mmal_msg_header) +
     payload_len);

 vchi_service_release(instance->handle);

 if (ret) {
  pr_err("error %d queuing message\n", ret);
  release_msg_context(msg_context);
  return ret;
 }

 timeout = wait_for_completion_timeout(&msg_context->u.sync.cmplt,
           3 * HZ);
 if (timeout == 0) {
  pr_err("timed out waiting for sync completion\n");
  ret = -ETIME;

  release_msg_context(msg_context);
  return ret;
 }

 *msg_out = msg_context->u.sync.msg;
 *msg_handle_out = msg_context->u.sync.msg_handle;
 release_msg_context(msg_context);

 return 0;
}
