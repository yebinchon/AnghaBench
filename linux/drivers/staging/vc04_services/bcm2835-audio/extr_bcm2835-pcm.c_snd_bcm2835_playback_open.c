
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_bcm2835_playback_open_generic (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int snd_bcm2835_playback_open(struct snd_pcm_substream *substream)
{
 return snd_bcm2835_playback_open_generic(substream, 0);
}
