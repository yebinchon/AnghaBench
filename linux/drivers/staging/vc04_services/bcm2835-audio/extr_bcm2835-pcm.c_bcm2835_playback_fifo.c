
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct bcm2835_alsa_stream {unsigned int period_size; unsigned int buffer_size; unsigned int period_offset; int interpolate_start; int pos; scalar_t__ draining; struct snd_pcm_substream* substream; } ;


 int SNDRV_PCM_STATE_SETUP ;
 int SNDRV_PCM_STATE_XRUN ;
 unsigned int atomic_read (int *) ;
 int atomic_set (int *,unsigned int) ;
 int ktime_get () ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;
 int snd_pcm_stop (struct snd_pcm_substream*,int ) ;
 int snd_pcm_stream_lock (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock (struct snd_pcm_substream*) ;

void bcm2835_playback_fifo(struct bcm2835_alsa_stream *alsa_stream,
      unsigned int bytes)
{
 struct snd_pcm_substream *substream = alsa_stream->substream;
 unsigned int pos;

 if (!alsa_stream->period_size)
  return;

 if (bytes >= alsa_stream->buffer_size) {
  snd_pcm_stream_lock(substream);
  snd_pcm_stop(substream,
        alsa_stream->draining ?
        SNDRV_PCM_STATE_SETUP :
        SNDRV_PCM_STATE_XRUN);
  snd_pcm_stream_unlock(substream);
  return;
 }

 pos = atomic_read(&alsa_stream->pos);
 pos += bytes;
 pos %= alsa_stream->buffer_size;
 atomic_set(&alsa_stream->pos, pos);

 alsa_stream->period_offset += bytes;
 alsa_stream->interpolate_start = ktime_get();
 if (alsa_stream->period_offset >= alsa_stream->period_size) {
  alsa_stream->period_offset %= alsa_stream->period_size;
  snd_pcm_period_elapsed(substream);
 }
}
