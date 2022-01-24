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
struct bcm2835_vchi_ctx {int /*<<< orphan*/  vchi_instance; } ;
struct bcm2835_audio_instance {int peer_version; int max_packet; int /*<<< orphan*/  vchi_handle; struct bcm2835_alsa_stream* alsa_stream; int /*<<< orphan*/  dev; int /*<<< orphan*/  vchi_mutex; } ;
struct bcm2835_alsa_stream {struct bcm2835_audio_instance* instance; TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct bcm2835_vchi_ctx* vchi_ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VC_AUDIO_MSG_TYPE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_audio_instance*) ; 
 int FUNC1 (struct bcm2835_audio_instance*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_audio_instance*) ; 
 scalar_t__ force_bulk ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_audio_instance*) ; 
 struct bcm2835_audio_instance* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm2835_audio_instance*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct bcm2835_audio_instance*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*) ; 

int FUNC9(struct bcm2835_alsa_stream *alsa_stream)
{
	struct bcm2835_vchi_ctx *vchi_ctx = alsa_stream->chip->vchi_ctx;
	struct bcm2835_audio_instance *instance;
	int err;

	/* Allocate memory for this instance */
	instance = FUNC4(sizeof(*instance), GFP_KERNEL);
	if (!instance)
		return -ENOMEM;
	FUNC5(&instance->vchi_mutex);
	instance->dev = alsa_stream->chip->dev;
	instance->alsa_stream = alsa_stream;
	alsa_stream->instance = instance;

	err = FUNC7(vchi_ctx->vchi_instance,
				 instance);
	if (err < 0)
		goto free_instance;

	err = FUNC1(instance, VC_AUDIO_MSG_TYPE_OPEN,
					false);
	if (err < 0)
		goto deinit;

	FUNC0(instance);
	FUNC8(instance->vchi_handle, &instance->peer_version);
	FUNC2(instance);
	if (instance->peer_version < 2 || force_bulk)
		instance->max_packet = 0; /* bulk transfer */
	else
		instance->max_packet = 4000;

	return 0;

 deinit:
	FUNC6(instance);
 free_instance:
	alsa_stream->instance = NULL;
	FUNC3(instance);
	return err;
}