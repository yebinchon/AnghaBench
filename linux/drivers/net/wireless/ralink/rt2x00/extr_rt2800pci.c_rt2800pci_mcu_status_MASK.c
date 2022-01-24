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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2M_MAILBOX_CID ; 
 int /*<<< orphan*/  H2M_MAILBOX_CID_CMD0 ; 
 int /*<<< orphan*/  H2M_MAILBOX_CID_CMD1 ; 
 int /*<<< orphan*/  H2M_MAILBOX_CID_CMD2 ; 
 int /*<<< orphan*/  H2M_MAILBOX_CID_CMD3 ; 
 int /*<<< orphan*/  H2M_MAILBOX_STATUS ; 
 int /*<<< orphan*/  REGISTER_BUSY_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,char*) ; 
 scalar_t__ const FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev, const u8 token)
{
	unsigned int i;
	u32 reg;

	/*
	 * SOC devices don't support MCU requests.
	 */
	if (FUNC2(rt2x00dev))
		return;

	for (i = 0; i < 200; i++) {
		reg = FUNC3(rt2x00dev, H2M_MAILBOX_CID);

		if ((FUNC1(reg, H2M_MAILBOX_CID_CMD0) == token) ||
		    (FUNC1(reg, H2M_MAILBOX_CID_CMD1) == token) ||
		    (FUNC1(reg, H2M_MAILBOX_CID_CMD2) == token) ||
		    (FUNC1(reg, H2M_MAILBOX_CID_CMD3) == token))
			break;

		FUNC5(REGISTER_BUSY_DELAY);
	}

	if (i == 200)
		FUNC0(rt2x00dev, "MCU request failed, no response from hardware\n");

	FUNC4(rt2x00dev, H2M_MAILBOX_STATUS, ~0);
	FUNC4(rt2x00dev, H2M_MAILBOX_CID, ~0);
}