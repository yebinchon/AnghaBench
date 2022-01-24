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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int /*<<< orphan*/  format; int /*<<< orphan*/  rate; struct bcm2835_alsa_stream* private_data; } ;
struct bcm2835_chip {int spdif_status; } ;
struct TYPE_2__ {void* sw_buffer_size; void* hw_buffer_size; } ;
struct bcm2835_alsa_stream {int draining; int /*<<< orphan*/  interpolate_start; scalar_t__ period_offset; int /*<<< orphan*/  pos; int /*<<< orphan*/  period_size; void* buffer_size; TYPE_1__ pcm_indirect; } ;

/* Variables and functions */
 int IEC958_AES0_NONAUDIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bcm2835_alsa_stream*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 
 struct bcm2835_chip* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	struct bcm2835_chip *chip = FUNC7(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
	int channels;
	int err;

	/* notify the vchiq that it should enter spdif passthrough mode by
	 * setting channels=0 (see
	 * https://github.com/raspberrypi/linux/issues/528)
	 */
	if (chip->spdif_status & IEC958_AES0_NONAUDIO)
		channels = 0;
	else
		channels = runtime->channels;

	err = FUNC1(alsa_stream, channels,
				       runtime->rate,
				       FUNC4(runtime->format));
	if (err < 0)
		return err;

	FUNC3(&alsa_stream->pcm_indirect, 0, sizeof(alsa_stream->pcm_indirect));

	alsa_stream->pcm_indirect.hw_buffer_size =
		alsa_stream->pcm_indirect.sw_buffer_size =
		FUNC5(substream);

	alsa_stream->buffer_size = FUNC5(substream);
	alsa_stream->period_size = FUNC6(substream);
	FUNC0(&alsa_stream->pos, 0);
	alsa_stream->period_offset = 0;
	alsa_stream->draining = false;
	alsa_stream->interpolate_start = FUNC2();

	return 0;
}