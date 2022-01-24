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
struct bcm2835_audio_instance {int dummy; } ;
struct bcm2835_alsa_stream {struct bcm2835_audio_instance* instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_AUDIO_MSG_TYPE_CLOSE ; 
 int FUNC0 (struct bcm2835_audio_instance*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_audio_instance*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_audio_instance*) ; 

int FUNC3(struct bcm2835_alsa_stream *alsa_stream)
{
	struct bcm2835_audio_instance *instance = alsa_stream->instance;
	int err;

	err = FUNC0(alsa_stream->instance,
					VC_AUDIO_MSG_TYPE_CLOSE, true);

	/* Stop the audio service */
	FUNC2(instance);
	alsa_stream->instance = NULL;
	FUNC1(instance);

	return err;
}