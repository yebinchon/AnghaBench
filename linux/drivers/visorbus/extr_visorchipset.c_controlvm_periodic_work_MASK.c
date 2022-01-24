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
struct work_struct {int dummy; } ;
struct controlvm_message {int dummy; } ;
struct TYPE_2__ {int controlvm_pending_msg_valid; scalar_t__ poll_jiffies; int /*<<< orphan*/  periodic_controlvm_work; scalar_t__ most_recent_message_jiffies; struct controlvm_message controlvm_pending_msg; int /*<<< orphan*/  controlvm_channel; } ;

/* Variables and functions */
 int CONTROLVM_MESSAGE_MAX ; 
 int /*<<< orphan*/  CONTROLVM_QUEUE_RESPONSE ; 
 int EAGAIN ; 
 int HZ ; 
 int MIN_IDLE_SECONDS ; 
 scalar_t__ POLLJIFFIES_CONTROLVM_FAST ; 
 scalar_t__ POLLJIFFIES_CONTROLVM_SLOW ; 
 TYPE_1__* chipset_dev ; 
 int FUNC0 (struct controlvm_message,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct controlvm_message*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct controlvm_message*) ; 

__attribute__((used)) static void FUNC7(struct work_struct *work)
{
	struct controlvm_message inmsg;
	int count = 0;
	int err;

	/* Drain the RESPONSE queue make it empty */
	do {
		err = FUNC6(chipset_dev->controlvm_channel,
						CONTROLVM_QUEUE_RESPONSE,
						&inmsg);
	} while ((!err) && (++count < CONTROLVM_MESSAGE_MAX));
	if (err != -EAGAIN)
		goto schedule_out;
	if (chipset_dev->controlvm_pending_msg_valid) {
		/*
		 * we throttled processing of a prior msg, so try to process
		 * it again rather than reading a new one
		 */
		inmsg = chipset_dev->controlvm_pending_msg;
		chipset_dev->controlvm_pending_msg_valid = false;
		err = 0;
	} else {
		err = FUNC2(&inmsg);
	}
	while (!err) {
		chipset_dev->most_recent_message_jiffies = jiffies;
		err = FUNC0(inmsg,
				     FUNC5
				     (chipset_dev->controlvm_channel));
		if (err == -EAGAIN) {
			chipset_dev->controlvm_pending_msg = inmsg;
			chipset_dev->controlvm_pending_msg_valid = true;
			break;
		}

		err = FUNC2(&inmsg);
	}
	/* parahotplug_worker */
	FUNC1();

/*
 * The controlvm messages are sent in a bulk. If we start receiving messages, we
 * want the polling to be fast. If we do not receive any message for
 * MIN_IDLE_SECONDS, we can slow down the polling.
 */
schedule_out:
	if (FUNC4(jiffies, chipset_dev->most_recent_message_jiffies +
				(HZ * MIN_IDLE_SECONDS))) {
		/*
		 * it's been longer than MIN_IDLE_SECONDS since we processed
		 * our last controlvm message; slow down the polling
		 */
		if (chipset_dev->poll_jiffies != POLLJIFFIES_CONTROLVM_SLOW)
			chipset_dev->poll_jiffies = POLLJIFFIES_CONTROLVM_SLOW;
	} else {
		if (chipset_dev->poll_jiffies != POLLJIFFIES_CONTROLVM_FAST)
			chipset_dev->poll_jiffies = POLLJIFFIES_CONTROLVM_FAST;
	}
	FUNC3(&chipset_dev->periodic_controlvm_work,
			      chipset_dev->poll_jiffies);
}