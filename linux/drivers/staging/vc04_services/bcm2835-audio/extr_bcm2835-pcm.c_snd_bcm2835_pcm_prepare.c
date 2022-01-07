
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int format; int rate; struct bcm2835_alsa_stream* private_data; } ;
struct bcm2835_chip {int spdif_status; } ;
struct TYPE_2__ {void* sw_buffer_size; void* hw_buffer_size; } ;
struct bcm2835_alsa_stream {int draining; int interpolate_start; scalar_t__ period_offset; int pos; int period_size; void* buffer_size; TYPE_1__ pcm_indirect; } ;


 int IEC958_AES0_NONAUDIO ;
 int atomic_set (int *,int ) ;
 int bcm2835_audio_set_params (struct bcm2835_alsa_stream*,int,int ,int ) ;
 int ktime_get () ;
 int memset (TYPE_1__*,int ,int) ;
 int snd_pcm_format_width (int ) ;
 void* snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct bcm2835_chip* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_bcm2835_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct bcm2835_chip *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
 int channels;
 int err;





 if (chip->spdif_status & IEC958_AES0_NONAUDIO)
  channels = 0;
 else
  channels = runtime->channels;

 err = bcm2835_audio_set_params(alsa_stream, channels,
           runtime->rate,
           snd_pcm_format_width(runtime->format));
 if (err < 0)
  return err;

 memset(&alsa_stream->pcm_indirect, 0, sizeof(alsa_stream->pcm_indirect));

 alsa_stream->pcm_indirect.hw_buffer_size =
  alsa_stream->pcm_indirect.sw_buffer_size =
  snd_pcm_lib_buffer_bytes(substream);

 alsa_stream->buffer_size = snd_pcm_lib_buffer_bytes(substream);
 alsa_stream->period_size = snd_pcm_lib_period_bytes(substream);
 atomic_set(&alsa_stream->pos, 0);
 alsa_stream->period_offset = 0;
 alsa_stream->draining = 0;
 alsa_stream->interpolate_start = ktime_get();

 return 0;
}
