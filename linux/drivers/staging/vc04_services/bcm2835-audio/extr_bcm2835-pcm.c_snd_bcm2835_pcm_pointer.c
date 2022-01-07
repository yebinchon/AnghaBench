
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; int delay; struct bcm2835_alsa_stream* private_data; } ;
struct bcm2835_alsa_stream {int pos; int pcm_indirect; int interpolate_start; } ;
typedef int snd_pcm_uframes_t ;
typedef int snd_pcm_sframes_t ;
typedef int ktime_t ;


 int atomic_read (int *) ;
 int div_u64 (int,int) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int snd_pcm_indirect_playback_pointer (struct snd_pcm_substream*,int *,int ) ;

__attribute__((used)) static snd_pcm_uframes_t
snd_bcm2835_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
 ktime_t now = ktime_get();






 if ((ktime_to_ns(alsa_stream->interpolate_start)) &&
     (ktime_compare(alsa_stream->interpolate_start, now) < 0)) {
  u64 interval =
   (ktime_to_ns(ktime_sub(now,
    alsa_stream->interpolate_start)));
  u64 frames_output_in_interval =
   div_u64((interval * runtime->rate), 1000000000);
  snd_pcm_sframes_t frames_output_in_interval_sized =
   -frames_output_in_interval;
  runtime->delay = frames_output_in_interval_sized;
 }

 return snd_pcm_indirect_playback_pointer(substream,
  &alsa_stream->pcm_indirect,
  atomic_read(&alsa_stream->pos));
}
