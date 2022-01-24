#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_pcm_substream {int number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; int /*<<< orphan*/  private_free; struct bcm2835_alsa_stream* private_data; } ;
struct bcm2835_chip {int opened; int /*<<< orphan*/  audio_mutex; struct bcm2835_alsa_stream** alsa_stream; scalar_t__ spdif_status; int /*<<< orphan*/  dev; } ;
struct bcm2835_alsa_stream {int idx; struct snd_pcm_substream* substream; struct bcm2835_chip* chip; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_SUBSTREAMS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_TIME ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC0 (struct bcm2835_alsa_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_alsa_stream*) ; 
 struct bcm2835_alsa_stream* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_bcm2835_playback_free ; 
 int /*<<< orphan*/  snd_bcm2835_playback_hw ; 
 int /*<<< orphan*/  snd_bcm2835_playback_spdif_hw ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bcm2835_chip* FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(
	struct snd_pcm_substream *substream, int spdif)
{
	struct bcm2835_chip *chip = FUNC8(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct bcm2835_alsa_stream *alsa_stream;
	int idx;
	int err;

	FUNC4(&chip->audio_mutex);
	idx = substream->number;

	if (spdif && chip->opened) {
		err = -EBUSY;
		goto out;
	} else if (!spdif && (chip->opened & (1 << idx))) {
		err = -EBUSY;
		goto out;
	}
	if (idx >= MAX_SUBSTREAMS) {
		FUNC1(chip->dev,
			"substream(%d) device doesn't exist max(%d) substreams allowed\n",
			idx, MAX_SUBSTREAMS);
		err = -ENODEV;
		goto out;
	}

	alsa_stream = FUNC3(sizeof(*alsa_stream), GFP_KERNEL);
	if (!alsa_stream) {
		err = -ENOMEM;
		goto out;
	}

	/* Initialise alsa_stream */
	alsa_stream->chip = chip;
	alsa_stream->substream = substream;
	alsa_stream->idx = idx;

	err = FUNC0(alsa_stream);
	if (err) {
		FUNC2(alsa_stream);
		goto out;
	}
	runtime->private_data = alsa_stream;
	runtime->private_free = snd_bcm2835_playback_free;
	if (spdif) {
		runtime->hw = snd_bcm2835_playback_spdif_hw;
	} else {
		/* clear spdif status, as we are not in spdif mode */
		chip->spdif_status = 0;
		runtime->hw = snd_bcm2835_playback_hw;
	}
	/* minimum 16 bytes alignment (for vchiq bulk transfers) */
	FUNC7(runtime,
				   0,
				   SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
				   16);

	/* position update is in 10ms order */
	FUNC6(runtime,
				     SNDRV_PCM_HW_PARAM_PERIOD_TIME,
				     10 * 1000, UINT_MAX);

	chip->alsa_stream[idx] = alsa_stream;

	chip->opened |= (1 << idx);

out:
	FUNC5(&chip->audio_mutex);

	return err;
}