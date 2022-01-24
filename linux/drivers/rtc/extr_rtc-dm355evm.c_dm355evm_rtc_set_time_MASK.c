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
union evm_time {int /*<<< orphan*/ * bytes; int /*<<< orphan*/  value; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM355EVM_MSP_RTC_0 ; 
 int /*<<< orphan*/  DM355EVM_MSP_RTC_1 ; 
 int /*<<< orphan*/  DM355EVM_MSP_RTC_2 ; 
 int /*<<< orphan*/  DM355EVM_MSP_RTC_3 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	union evm_time	time;
	unsigned long	value;
	int		status;

	value = FUNC3(tm);
	time.value = FUNC0(value);

	FUNC1(dev, "write timestamp %08x\n", time.value);

	/*
	 * REVISIT handle non-atomic writes ... maybe just retry until
	 * byte[1] sticks (no rollover)?
	 */
	status = FUNC2(time.bytes[0], DM355EVM_MSP_RTC_0);
	if (status < 0)
		return status;

	status = FUNC2(time.bytes[1], DM355EVM_MSP_RTC_1);
	if (status < 0)
		return status;

	status = FUNC2(time.bytes[2], DM355EVM_MSP_RTC_2);
	if (status < 0)
		return status;

	status = FUNC2(time.bytes[3], DM355EVM_MSP_RTC_3);
	if (status < 0)
		return status;

	return 0;
}