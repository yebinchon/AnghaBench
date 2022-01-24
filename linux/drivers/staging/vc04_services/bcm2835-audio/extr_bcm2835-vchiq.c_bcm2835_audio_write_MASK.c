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
struct TYPE_2__ {unsigned int count; int /*<<< orphan*/  cookie2; int /*<<< orphan*/  cookie1; int /*<<< orphan*/  max_packet; } ;
struct vc_audio_msg {TYPE_1__ write; int /*<<< orphan*/  type; } ;
struct bcm2835_audio_instance {int /*<<< orphan*/  dev; int /*<<< orphan*/  vchi_handle; int /*<<< orphan*/  max_packet; } ;
struct bcm2835_alsa_stream {struct bcm2835_audio_instance* instance; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  VCHI_FLAGS_BLOCK_UNTIL_DATA_READ ; 
 int /*<<< orphan*/  VC_AUDIO_MSG_TYPE_WRITE ; 
 int /*<<< orphan*/  VC_AUDIO_WRITE_COOKIE1 ; 
 int /*<<< orphan*/  VC_AUDIO_WRITE_COOKIE2 ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_audio_instance*) ; 
 int FUNC1 (struct bcm2835_audio_instance*,struct vc_audio_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_audio_instance*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,void*,int) ; 

int FUNC7(struct bcm2835_alsa_stream *alsa_stream,
			unsigned int size, void *src)
{
	struct bcm2835_audio_instance *instance = alsa_stream->instance;
	struct vc_audio_msg m = {
		.type = VC_AUDIO_MSG_TYPE_WRITE,
		.write.count = size,
		.write.max_packet = instance->max_packet,
		.write.cookie1 = VC_AUDIO_WRITE_COOKIE1,
		.write.cookie2 = VC_AUDIO_WRITE_COOKIE2,
	};
	unsigned int count;
	int err, status;

	if (!size)
		return 0;

	FUNC0(instance);
	err = FUNC1(instance, &m, false);
	if (err < 0)
		goto unlock;

	count = size;
	if (!instance->max_packet) {
		/* Send the message to the videocore */
		status = FUNC5(instance->vchi_handle,
						  src, count,
						  VCHI_FLAGS_BLOCK_UNTIL_DATA_READ,
						  NULL);
	} else {
		while (count > 0) {
			int bytes = FUNC4(instance->max_packet, count);

			status = FUNC6(instance->vchi_handle,
							   src, bytes);
			src += bytes;
			count -= bytes;
		}
	}

	if (status) {
		FUNC3(instance->dev,
			"failed on %d bytes transfer (status=%d)\n",
			size, status);
		err = -EIO;
	}

 unlock:
	FUNC2(instance);
	return err;
}