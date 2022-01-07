
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct bcm2835_alsa_stream* private_data; } ;
struct bcm2835_chip {int opened; int audio_mutex; } ;
struct bcm2835_alsa_stream {size_t idx; TYPE_1__* chip; scalar_t__ buffer_size; scalar_t__ period_size; } ;
struct TYPE_2__ {int ** alsa_stream; } ;


 int bcm2835_audio_close (struct bcm2835_alsa_stream*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bcm2835_chip* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_bcm2835_playback_close(struct snd_pcm_substream *substream)
{
 struct bcm2835_alsa_stream *alsa_stream;
 struct snd_pcm_runtime *runtime;
 struct bcm2835_chip *chip;

 chip = snd_pcm_substream_chip(substream);
 mutex_lock(&chip->audio_mutex);
 runtime = substream->runtime;
 alsa_stream = runtime->private_data;

 alsa_stream->period_size = 0;
 alsa_stream->buffer_size = 0;

 bcm2835_audio_close(alsa_stream);
 alsa_stream->chip->alsa_stream[alsa_stream->idx] = ((void*)0);





 chip->opened &= ~(1 << substream->number);

 mutex_unlock(&chip->audio_mutex);

 return 0;
}
