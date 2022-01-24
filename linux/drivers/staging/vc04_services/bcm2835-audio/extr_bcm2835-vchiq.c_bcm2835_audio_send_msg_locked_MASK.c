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
struct vc_audio_msg {int /*<<< orphan*/  type; } ;
struct bcm2835_audio_instance {int result; int /*<<< orphan*/  dev; int /*<<< orphan*/  msg_avail_comp; int /*<<< orphan*/  vchi_handle; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct vc_audio_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bcm2835_audio_instance *instance,
					 struct vc_audio_msg *m, bool wait)
{
	int status;

	if (wait) {
		instance->result = -1;
		FUNC1(&instance->msg_avail_comp);
	}

	status = FUNC3(instance->vchi_handle,
					   m, sizeof(*m));
	if (status) {
		FUNC0(instance->dev,
			"vchi message queue failed: %d, msg=%d\n",
			status, m->type);
		return -EIO;
	}

	if (wait) {
		if (!FUNC4(&instance->msg_avail_comp,
						 FUNC2(10 * 1000))) {
			FUNC0(instance->dev,
				"vchi message timeout, msg=%d\n", m->type);
			return -ETIMEDOUT;
		} else if (instance->result) {
			FUNC0(instance->dev,
				"vchi message response error:%d, msg=%d\n",
				instance->result, m->type);
			return -EIO;
		}
	}

	return 0;
}