
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct bcm2835_alsa_stream* private_data; } ;
struct bcm2835_alsa_stream {int draining; } ;


 int EINVAL ;



 int bcm2835_audio_drain (struct bcm2835_alsa_stream*) ;
 int bcm2835_audio_start (struct bcm2835_alsa_stream*) ;
 int bcm2835_audio_stop (struct bcm2835_alsa_stream*) ;

__attribute__((used)) static int snd_bcm2835_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;

 switch (cmd) {
 case 129:
  return bcm2835_audio_start(alsa_stream);
 case 130:
  alsa_stream->draining = 1;
  return bcm2835_audio_drain(alsa_stream);
 case 128:
  return bcm2835_audio_stop(alsa_stream);
 default:
  return -EINVAL;
 }
}
