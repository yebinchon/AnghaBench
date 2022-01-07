
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cookie1; scalar_t__ cookie2; int count; } ;
struct TYPE_3__ {int success; } ;
struct vc_audio_msg {scalar_t__ type; TYPE_2__ complete; TYPE_1__ result; } ;
struct bcm2835_audio_instance {int dev; int alsa_stream; int msg_avail_comp; int result; int vchi_handle; } ;
typedef int m ;
typedef scalar_t__ VCHI_CALLBACK_REASON_T ;


 scalar_t__ const VCHI_CALLBACK_MSG_AVAILABLE ;
 int VCHI_FLAGS_NONE ;
 scalar_t__ VC_AUDIO_MSG_TYPE_COMPLETE ;
 scalar_t__ VC_AUDIO_MSG_TYPE_RESULT ;
 scalar_t__ VC_AUDIO_WRITE_COOKIE1 ;
 scalar_t__ VC_AUDIO_WRITE_COOKIE2 ;
 int bcm2835_playback_fifo (int ,int ) ;
 int complete (int *) ;
 int dev_err (int ,char*,...) ;
 int vchi_msg_dequeue (int ,struct vc_audio_msg*,int,int*,int ) ;

__attribute__((used)) static void audio_vchi_callback(void *param,
    const VCHI_CALLBACK_REASON_T reason,
    void *msg_handle)
{
 struct bcm2835_audio_instance *instance = param;
 struct vc_audio_msg m;
 int msg_len;
 int status;

 if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
  return;

 status = vchi_msg_dequeue(instance->vchi_handle,
      &m, sizeof(m), &msg_len, VCHI_FLAGS_NONE);
 if (m.type == VC_AUDIO_MSG_TYPE_RESULT) {
  instance->result = m.result.success;
  complete(&instance->msg_avail_comp);
 } else if (m.type == VC_AUDIO_MSG_TYPE_COMPLETE) {
  if (m.complete.cookie1 != VC_AUDIO_WRITE_COOKIE1 ||
      m.complete.cookie2 != VC_AUDIO_WRITE_COOKIE2)
   dev_err(instance->dev, "invalid cookie\n");
  else
   bcm2835_playback_fifo(instance->alsa_stream,
           m.complete.count);
 } else {
  dev_err(instance->dev, "unexpected callback type=%d\n", m.type);
 }
}
