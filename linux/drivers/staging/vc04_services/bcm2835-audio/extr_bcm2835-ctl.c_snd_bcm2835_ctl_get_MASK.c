#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct bcm2835_chip {int /*<<< orphan*/  audio_mutex; int /*<<< orphan*/  dest; int /*<<< orphan*/  mute; int /*<<< orphan*/  volume; } ;

/* Variables and functions */
 scalar_t__ PCM_PLAYBACK_DEVICE ; 
 scalar_t__ PCM_PLAYBACK_MUTE ; 
 scalar_t__ PCM_PLAYBACK_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct bcm2835_chip* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *ucontrol)
{
	struct bcm2835_chip *chip = FUNC2(kcontrol);

	FUNC0(&chip->audio_mutex);

	if (kcontrol->private_value == PCM_PLAYBACK_VOLUME)
		ucontrol->value.integer.value[0] = chip->volume;
	else if (kcontrol->private_value == PCM_PLAYBACK_MUTE)
		ucontrol->value.integer.value[0] = chip->mute;
	else if (kcontrol->private_value == PCM_PLAYBACK_DEVICE)
		ucontrol->value.integer.value[0] = chip->dest;

	FUNC1(&chip->audio_mutex);
	return 0;
}