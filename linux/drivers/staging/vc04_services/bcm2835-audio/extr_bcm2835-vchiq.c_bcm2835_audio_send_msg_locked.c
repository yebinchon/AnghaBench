
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_audio_msg {int type; } ;
struct bcm2835_audio_instance {int result; int dev; int msg_avail_comp; int vchi_handle; } ;


 int EIO ;
 int ETIMEDOUT ;
 int dev_err (int ,char*,int,...) ;
 int init_completion (int *) ;
 int msecs_to_jiffies (int) ;
 int vchi_queue_kernel_message (int ,struct vc_audio_msg*,int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int bcm2835_audio_send_msg_locked(struct bcm2835_audio_instance *instance,
      struct vc_audio_msg *m, bool wait)
{
 int status;

 if (wait) {
  instance->result = -1;
  init_completion(&instance->msg_avail_comp);
 }

 status = vchi_queue_kernel_message(instance->vchi_handle,
        m, sizeof(*m));
 if (status) {
  dev_err(instance->dev,
   "vchi message queue failed: %d, msg=%d\n",
   status, m->type);
  return -EIO;
 }

 if (wait) {
  if (!wait_for_completion_timeout(&instance->msg_avail_comp,
       msecs_to_jiffies(10 * 1000))) {
   dev_err(instance->dev,
    "vchi message timeout, msg=%d\n", m->type);
   return -ETIMEDOUT;
  } else if (instance->result) {
   dev_err(instance->dev,
    "vchi message response error:%d, msg=%d\n",
    instance->result, m->type);
   return -EIO;
  }
 }

 return 0;
}
