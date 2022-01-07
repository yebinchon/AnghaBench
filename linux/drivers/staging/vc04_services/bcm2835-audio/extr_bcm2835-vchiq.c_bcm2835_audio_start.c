
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_alsa_stream {int instance; } ;


 int VC_AUDIO_MSG_TYPE_START ;
 int bcm2835_audio_send_simple (int ,int ,int) ;

int bcm2835_audio_start(struct bcm2835_alsa_stream *alsa_stream)
{
 return bcm2835_audio_send_simple(alsa_stream->instance,
      VC_AUDIO_MSG_TYPE_START, 0);
}
