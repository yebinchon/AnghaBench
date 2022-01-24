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
struct snd_pcm_substream {int dummy; } ;
struct bcm2835_alsa_stream {unsigned int period_size; unsigned int buffer_size; unsigned int period_offset; int /*<<< orphan*/  interpolate_start; int /*<<< orphan*/  pos; scalar_t__ draining; struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STATE_SETUP ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_XRUN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 

void FUNC7(struct bcm2835_alsa_stream *alsa_stream,
			   unsigned int bytes)
{
	struct snd_pcm_substream *substream = alsa_stream->substream;
	unsigned int pos;

	if (!alsa_stream->period_size)
		return;

	if (bytes >= alsa_stream->buffer_size) {
		FUNC5(substream);
		FUNC4(substream,
			     alsa_stream->draining ?
			     SNDRV_PCM_STATE_SETUP :
			     SNDRV_PCM_STATE_XRUN);
		FUNC6(substream);
		return;
	}

	pos = FUNC0(&alsa_stream->pos);
	pos += bytes;
	pos %= alsa_stream->buffer_size;
	FUNC1(&alsa_stream->pos, pos);

	alsa_stream->period_offset += bytes;
	alsa_stream->interpolate_start = FUNC2();
	if (alsa_stream->period_offset >= alsa_stream->period_size) {
		alsa_stream->period_offset %= alsa_stream->period_size;
		FUNC3(substream);
	}
}