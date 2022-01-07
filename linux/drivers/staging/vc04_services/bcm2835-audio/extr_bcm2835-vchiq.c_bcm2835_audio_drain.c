
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int draining; } ;
struct vc_audio_msg {TYPE_1__ stop; int type; } ;
struct bcm2835_alsa_stream {int instance; } ;


 int VC_AUDIO_MSG_TYPE_STOP ;
 int bcm2835_audio_send_msg (int ,struct vc_audio_msg*,int) ;

int bcm2835_audio_drain(struct bcm2835_alsa_stream *alsa_stream)
{
 struct vc_audio_msg m = {
  .type = VC_AUDIO_MSG_TYPE_STOP,
  .stop.draining = 1,
 };

 return bcm2835_audio_send_msg(alsa_stream->instance, &m, 0);
}
