
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int channels; unsigned int samplerate; unsigned int bps; } ;
struct vc_audio_msg {TYPE_1__ config; int type; } ;
struct bcm2835_alsa_stream {int instance; } ;


 int VC_AUDIO_MSG_TYPE_CONFIG ;
 int bcm2835_audio_send_msg (int ,struct vc_audio_msg*,int) ;
 int bcm2835_audio_set_ctls (struct bcm2835_alsa_stream*) ;

int bcm2835_audio_set_params(struct bcm2835_alsa_stream *alsa_stream,
        unsigned int channels, unsigned int samplerate,
        unsigned int bps)
{
 struct vc_audio_msg m = {
   .type = VC_AUDIO_MSG_TYPE_CONFIG,
   .config.channels = channels,
   .config.samplerate = samplerate,
   .config.bps = bps,
 };
 int err;


 err = bcm2835_audio_set_ctls(alsa_stream);
 if (err)
  return err;

 return bcm2835_audio_send_msg(alsa_stream->instance, &m, 1);
}
