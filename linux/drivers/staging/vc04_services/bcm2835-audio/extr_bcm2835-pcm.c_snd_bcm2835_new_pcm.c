
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_pcm {int nonatomic; int name; struct bcm2835_chip* private_data; } ;
struct bcm2835_chip {int dest; struct snd_pcm* pcm; struct snd_pcm* pcm_spdif; TYPE_1__* card; int mute; scalar_t__ volume; } ;
typedef enum snd_bcm2835_route { ____Placeholder_snd_bcm2835_route } snd_bcm2835_route ;
struct TYPE_2__ {int dev; } ;


 int CTRL_VOL_UNMUTE ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_bcm2835_playback_ops ;
 int snd_bcm2835_playback_spdif_ops ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;
 int snd_pcm_new (TYPE_1__*,char const*,int,int ,int ,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,int ,int *) ;
 int strcpy (int ,char const*) ;

int snd_bcm2835_new_pcm(struct bcm2835_chip *chip, const char *name,
   int idx, enum snd_bcm2835_route route,
   u32 numchannels, bool spdif)
{
 struct snd_pcm *pcm;
 int err;

 err = snd_pcm_new(chip->card, name, idx, numchannels, 0, &pcm);
 if (err)
  return err;

 pcm->private_data = chip;
 pcm->nonatomic = 1;
 strcpy(pcm->name, name);
 if (!spdif) {
  chip->dest = route;
  chip->volume = 0;
  chip->mute = CTRL_VOL_UNMUTE;
 }

 snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK,
   spdif ? &snd_bcm2835_playback_spdif_ops :
   &snd_bcm2835_playback_ops);

 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
  chip->card->dev, 128 * 1024, 128 * 1024);

 if (spdif)
  chip->pcm_spdif = pcm;
 else
  chip->pcm = pcm;
 return 0;
}
