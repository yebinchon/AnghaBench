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
struct snd_pcm_substream {struct channel* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {scalar_t__ channels_max; scalar_t__ channels_min; } ;
struct channel {TYPE_1__ pcm_hardware; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			 struct snd_pcm_hw_params *hw_params)
{
	struct channel *channel = substream->private_data;

	if ((FUNC1(hw_params) > channel->pcm_hardware.channels_max) ||
	    (FUNC1(hw_params) < channel->pcm_hardware.channels_min)) {
		FUNC2("Requested number of channels not supported.\n");
		return -EINVAL;
	}
	return FUNC3(substream,
						FUNC0(hw_params));
}