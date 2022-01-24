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
struct snd_soc_dai {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct gbaudio_stream_params {int /*<<< orphan*/  state; } ;
struct gbaudio_codec_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  module_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GBAUDIO_CODEC_STARTUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct gbaudio_codec_info* FUNC1 (int /*<<< orphan*/ ) ; 
 struct gbaudio_stream_params* FUNC2 (struct gbaudio_codec_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			   struct snd_soc_dai *dai)
{
	struct gbaudio_codec_info *codec = FUNC1(dai->dev);
	struct gbaudio_stream_params *params;

	FUNC4(&codec->lock);

	if (FUNC3(&codec->module_list)) {
		FUNC0(codec->dev, "No codec module available\n");
		FUNC5(&codec->lock);
		return -ENODEV;
	}

	params = FUNC2(codec, dai->id, substream->stream);
	if (!params) {
		FUNC0(codec->dev, "Failed to fetch dai_stream pointer\n");
		FUNC5(&codec->lock);
		return -EINVAL;
	}
	params->state = GBAUDIO_CODEC_STARTUP;
	FUNC5(&codec->lock);
	/* to prevent suspend in case of active audio */
	FUNC6(dai->dev);

	return 0;
}