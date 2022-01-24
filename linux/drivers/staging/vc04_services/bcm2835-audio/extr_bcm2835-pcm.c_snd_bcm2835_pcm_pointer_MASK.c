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
typedef  int u64 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; int delay; struct bcm2835_alsa_stream* private_data; } ;
struct bcm2835_alsa_stream {int /*<<< orphan*/  pos; int /*<<< orphan*/  pcm_indirect; int /*<<< orphan*/  interpolate_start; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
typedef  int snd_pcm_sframes_t ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
	ktime_t now = FUNC3();

	/* Give userspace better delay reporting by interpolating between GPU
	 * notifications, assuming audio speed is close enough to the clock
	 * used for ktime
	 */

	if ((FUNC5(alsa_stream->interpolate_start)) &&
	    (FUNC2(alsa_stream->interpolate_start, now) < 0)) {
		u64 interval =
			(FUNC5(FUNC4(now,
				alsa_stream->interpolate_start)));
		u64 frames_output_in_interval =
			FUNC1((interval * runtime->rate), 1000000000);
		snd_pcm_sframes_t frames_output_in_interval_sized =
			-frames_output_in_interval;
		runtime->delay = frames_output_in_interval_sized;
	}

	return FUNC6(substream,
		&alsa_stream->pcm_indirect,
		FUNC0(&alsa_stream->pos));
}