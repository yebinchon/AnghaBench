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
struct snd_kcontrol_new {int dummy; } ;
struct gbaudio_module_info {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct gb_audio_control {int iface; int /*<<< orphan*/  id; int /*<<< orphan*/  name; TYPE_1__ info; } ;

/* Variables and functions */
 int EINVAL ; 
#define  GB_AUDIO_CTL_ELEM_TYPE_ENUMERATED 129 
#define  SNDRV_CTL_ELEM_IFACE_MIXER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct gbaudio_module_info*,struct snd_kcontrol_new*,struct gb_audio_control*) ; 
 int FUNC2 (struct gbaudio_module_info*,struct snd_kcontrol_new*,struct gb_audio_control*) ; 

__attribute__((used)) static int FUNC3(struct gbaudio_module_info *gb,
					struct snd_kcontrol_new *kctl,
					struct gb_audio_control *ctl)
{
	int ret;

	switch (ctl->iface) {
	case SNDRV_CTL_ELEM_IFACE_MIXER:
		switch (ctl->info.type) {
		case GB_AUDIO_CTL_ELEM_TYPE_ENUMERATED:
			ret = FUNC1(gb, kctl, ctl);
			break;
		default:
			ret = FUNC2(gb, kctl, ctl);
			break;
		}
		break;
	default:
		return -EINVAL;
	}

	FUNC0(gb->dev, "%s:%d DAPM control created, ret:%d\n", ctl->name,
		ctl->id, ret);
	return ret;
}