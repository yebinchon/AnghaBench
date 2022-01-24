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
struct TYPE_2__ {int /*<<< orphan*/  volume; int /*<<< orphan*/  dest; } ;
struct vc_audio_msg {TYPE_1__ control; int /*<<< orphan*/  type; } ;
struct bcm2835_chip {int /*<<< orphan*/  volume; int /*<<< orphan*/  mute; int /*<<< orphan*/  dest; } ;
struct bcm2835_alsa_stream {int /*<<< orphan*/  instance; struct bcm2835_chip* chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_MIN_VOLUME ; 
 int /*<<< orphan*/  VC_AUDIO_MSG_TYPE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct vc_audio_msg*,int) ; 

int FUNC2(struct bcm2835_alsa_stream *alsa_stream)
{
	struct bcm2835_chip *chip = alsa_stream->chip;
	struct vc_audio_msg m = {};

	m.type = VC_AUDIO_MSG_TYPE_CONTROL;
	m.control.dest = chip->dest;
	if (!chip->mute)
		m.control.volume = CHIP_MIN_VOLUME;
	else
		m.control.volume = FUNC0(chip->volume);

	return FUNC1(alsa_stream->instance, &m, true);
}