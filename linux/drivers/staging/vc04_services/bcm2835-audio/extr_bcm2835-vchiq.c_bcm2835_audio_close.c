
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_instance {int dummy; } ;
struct bcm2835_alsa_stream {struct bcm2835_audio_instance* instance; } ;


 int VC_AUDIO_MSG_TYPE_CLOSE ;
 int bcm2835_audio_send_simple (struct bcm2835_audio_instance*,int ,int) ;
 int kfree (struct bcm2835_audio_instance*) ;
 int vc_vchi_audio_deinit (struct bcm2835_audio_instance*) ;

int bcm2835_audio_close(struct bcm2835_alsa_stream *alsa_stream)
{
 struct bcm2835_audio_instance *instance = alsa_stream->instance;
 int err;

 err = bcm2835_audio_send_simple(alsa_stream->instance,
     VC_AUDIO_MSG_TYPE_CLOSE, 1);


 vc_vchi_audio_deinit(instance);
 alsa_stream->instance = ((void*)0);
 kfree(instance);

 return err;
}
