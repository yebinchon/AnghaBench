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
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU1000_SYS_CNTRCTRL ; 
 int /*<<< orphan*/  AU1000_SYS_TOYWRITE ; 
 int SYS_CNTRL_C0S ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_time*,unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	unsigned long t;

	FUNC3(tm, &t);

	FUNC1(t, AU1000_SYS_TOYWRITE);

	/* wait for the pending register write to succeed.  This can
	 * take up to 6 seconds...
	 */
	while (FUNC0(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_C0S)
		FUNC2(1);

	return 0;
}