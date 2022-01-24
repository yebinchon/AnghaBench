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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ENXIO ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSR_OS_MAILBOX_BUSY_BIT ; 
 int /*<<< orphan*/  MSR_OS_MAILBOX_DATA ; 
 int /*<<< orphan*/  MSR_OS_MAILBOX_INTERFACE ; 
 int OS_MAILBOX_RETRY_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(u8 command, u8 sub_command, u32 parameter,
				 u32 command_data, u32 *response_data)
{
	u32 retries;
	u64 data;
	int ret;

	/* Poll for rb bit == 0 */
	retries = OS_MAILBOX_RETRY_COUNT;
	do {
		FUNC2(MSR_OS_MAILBOX_INTERFACE, data);
		if (data & FUNC0(MSR_OS_MAILBOX_BUSY_BIT)) {
			ret = -EBUSY;
			continue;
		}
		ret = 0;
		break;
	} while (--retries);

	if (ret)
		return ret;

	/* Write DATA register */
	FUNC3(MSR_OS_MAILBOX_DATA, command_data);

	/* Write command register */
	data = FUNC0(MSR_OS_MAILBOX_BUSY_BIT) |
		      (parameter & FUNC1(13, 0)) << 16 |
		      (sub_command << 8) |
		      command;
	FUNC3(MSR_OS_MAILBOX_INTERFACE, data);

	/* Poll for rb bit == 0 */
	retries = OS_MAILBOX_RETRY_COUNT;
	do {
		FUNC2(MSR_OS_MAILBOX_INTERFACE, data);
		if (data & FUNC0(MSR_OS_MAILBOX_BUSY_BIT)) {
			ret = -EBUSY;
			continue;
		}

		if (data & 0xff)
			return -ENXIO;

		if (response_data) {
			FUNC2(MSR_OS_MAILBOX_DATA, data);
			*response_data = data;
		}
		ret = 0;
		break;
	} while (--retries);

	return ret;
}