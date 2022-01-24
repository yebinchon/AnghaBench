#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct snd_pcm {int nonatomic; int /*<<< orphan*/  name; struct bcm2835_chip* private_data; } ;
struct bcm2835_chip {int dest; struct snd_pcm* pcm; struct snd_pcm* pcm_spdif; TYPE_1__* card; int /*<<< orphan*/  mute; scalar_t__ volume; } ;
typedef  enum snd_bcm2835_route { ____Placeholder_snd_bcm2835_route } snd_bcm2835_route ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_VOL_UNMUTE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  snd_bcm2835_playback_ops ; 
 int /*<<< orphan*/  snd_bcm2835_playback_spdif_ops ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

int FUNC4(struct bcm2835_chip *chip, const char *name,
			int idx, enum snd_bcm2835_route route,
			u32 numchannels, bool spdif)
{
	struct snd_pcm *pcm;
	int err;

	err = FUNC1(chip->card, name, idx, numchannels, 0, &pcm);
	if (err)
		return err;

	pcm->private_data = chip;
	pcm->nonatomic = true;
	FUNC3(pcm->name, name);
	if (!spdif) {
		chip->dest = route;
		chip->volume = 0;
		chip->mute = CTRL_VOL_UNMUTE;
	}

	FUNC2(pcm, SNDRV_PCM_STREAM_PLAYBACK,
			spdif ? &snd_bcm2835_playback_spdif_ops :
			&snd_bcm2835_playback_ops);

	FUNC0(pcm, SNDRV_DMA_TYPE_DEV,
		chip->card->dev, 128 * 1024, 128 * 1024);

	if (spdif)
		chip->pcm_spdif = pcm;
	else
		chip->pcm = pcm;
	return 0;
}