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
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2M_MAILBOX_CID ; 
 int /*<<< orphan*/  H2M_MAILBOX_STATUS ; 
 int /*<<< orphan*/  MCU_SLEEP ; 
 int /*<<< orphan*/  MCU_WAKEUP ; 
 int /*<<< orphan*/  TOKEN_RADIO_OFF ; 
 int /*<<< orphan*/  TOKEN_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rt2x00_dev *rt2x00dev)
{
	int retval;

	retval = FUNC1(rt2x00dev);
	if (retval)
		return retval;

	/* After resume MCU_BOOT_SIGNAL will trash these. */
	FUNC3(rt2x00dev, H2M_MAILBOX_STATUS, ~0);
	FUNC3(rt2x00dev, H2M_MAILBOX_CID, ~0);

	FUNC0(rt2x00dev, MCU_SLEEP, TOKEN_RADIO_OFF, 0xff, 0x02);
	FUNC2(rt2x00dev, TOKEN_RADIO_OFF);

	FUNC0(rt2x00dev, MCU_WAKEUP, TOKEN_WAKEUP, 0, 0);
	FUNC2(rt2x00dev, TOKEN_WAKEUP);

	return retval;
}