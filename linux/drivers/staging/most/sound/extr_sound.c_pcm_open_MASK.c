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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct channel* private_data; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct most_channel_config {scalar_t__ direction; } ;
struct channel {int /*<<< orphan*/  pcm_hardware; int /*<<< orphan*/  playback_task; int /*<<< orphan*/  id; int /*<<< orphan*/  iface; struct snd_pcm_substream* substream; struct most_channel_config* cfg; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MOST_CH_TX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  comp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct channel*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  playback_thread ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct channel *channel = substream->private_data;
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct most_channel_config *cfg = channel->cfg;

	channel->substream = substream;

	if (cfg->direction == MOST_CH_TX) {
		channel->playback_task = FUNC2(playback_thread, channel,
						     "most_audio_playback");
		if (FUNC0(channel->playback_task)) {
			FUNC5("Couldn't start thread\n");
			return FUNC1(channel->playback_task);
		}
	}

	if (FUNC4(channel->iface, channel->id, &comp)) {
		FUNC5("most_start_channel() failed!\n");
		if (cfg->direction == MOST_CH_TX)
			FUNC3(channel->playback_task);
		return -EBUSY;
	}

	runtime->hw = channel->pcm_hardware;
	return 0;
}