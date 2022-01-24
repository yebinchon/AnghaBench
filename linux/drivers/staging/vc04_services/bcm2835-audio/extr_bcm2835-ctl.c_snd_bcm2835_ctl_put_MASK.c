#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct bcm2835_chip {int volume; int mute; int dest; int /*<<< orphan*/  audio_mutex; TYPE_3__* card; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCM_PLAYBACK_DEVICE ; 
 scalar_t__ PCM_PLAYBACK_MUTE ; 
 scalar_t__ PCM_PLAYBACK_VOLUME ; 
 scalar_t__ FUNC0 (struct bcm2835_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct bcm2835_chip* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *ucontrol)
{
	struct bcm2835_chip *chip = FUNC4(kcontrol);
	int val, *valp;
	int changed = 0;

	if (kcontrol->private_value == PCM_PLAYBACK_VOLUME)
		valp = &chip->volume;
	else if (kcontrol->private_value == PCM_PLAYBACK_MUTE)
		valp = &chip->mute;
	else if (kcontrol->private_value == PCM_PLAYBACK_DEVICE)
		valp = &chip->dest;
	else
		return -EINVAL;

	val = ucontrol->value.integer.value[0];
	FUNC2(&chip->audio_mutex);
	if (val != *valp) {
		*valp = val;
		changed = 1;
		if (FUNC0(chip))
			FUNC1(chip->card->dev, "Failed to set ALSA controls..\n");
	}
	FUNC3(&chip->audio_mutex);
	return changed;
}