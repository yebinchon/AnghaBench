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
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;

/* Variables and functions */
 int /*<<< orphan*/  H2M_MAILBOX_CID ; 
 int /*<<< orphan*/  H2M_MAILBOX_STATUS ; 
 int /*<<< orphan*/  MCU_SLEEP ; 
 int /*<<< orphan*/  MCU_WAKEUP ; 
 int STATE_AWAKE ; 
 int STATE_SLEEP ; 
 int /*<<< orphan*/  TOKEN_SLEEP ; 
 int /*<<< orphan*/  TOKEN_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct rt2x00_dev *rt2x00dev,
			       enum dev_state state)
{
	if (state == STATE_AWAKE) {
		FUNC0(rt2x00dev, MCU_WAKEUP, TOKEN_WAKEUP,
				   0, 0x02);
		FUNC1(rt2x00dev, TOKEN_WAKEUP);
	} else if (state == STATE_SLEEP) {
		FUNC2(rt2x00dev, H2M_MAILBOX_STATUS,
					  0xffffffff);
		FUNC2(rt2x00dev, H2M_MAILBOX_CID,
					  0xffffffff);
		FUNC0(rt2x00dev, MCU_SLEEP, TOKEN_SLEEP,
				   0xff, 0x01);
	}

	return 0;
}