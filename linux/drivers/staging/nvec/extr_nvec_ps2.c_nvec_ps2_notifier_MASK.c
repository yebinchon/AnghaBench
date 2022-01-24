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
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ser_dev; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char*,unsigned char) ; 
#define  NVEC_PS2 129 
#define  NVEC_PS2_EVT 128 
 TYPE_1__ ps2_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb,
			     unsigned long event_type, void *data)
{
	int i;
	unsigned char *msg = data;

	switch (event_type) {
	case NVEC_PS2_EVT:
		for (i = 0; i < msg[1]; i++)
			FUNC1(ps2_dev.ser_dev, msg[2 + i], 0);
		FUNC0("ps/2 mouse event: ", &msg[2], msg[1]);
		return NOTIFY_STOP;

	case NVEC_PS2:
		if (msg[2] == 1) {
			for (i = 0; i < (msg[1] - 2); i++)
				FUNC1(ps2_dev.ser_dev, msg[i + 4], 0);
			FUNC0("ps/2 mouse reply: ", &msg[4], msg[1] - 2);
		}

		else if (msg[1] != 2) /* !ack */
			FUNC0("unhandled mouse event: ", msg, msg[1] + 2);
		return NOTIFY_STOP;
	}

	return NOTIFY_DONE;
}