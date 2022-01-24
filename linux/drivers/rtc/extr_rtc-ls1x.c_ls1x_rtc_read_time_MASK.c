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
typedef  int time64_t ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int LS1X_YEAR_MASK ; 
 int /*<<< orphan*/  SYS_TOYREAD0 ; 
 int /*<<< orphan*/  SYS_TOYREAD1 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct rtc_time*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,struct rtc_time*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_time *rtm)
{
	unsigned long v;
	time64_t t;

	v = FUNC7(SYS_TOYREAD0);
	t = FUNC7(SYS_TOYREAD1);

	FUNC5(rtm, 0, sizeof(struct rtc_time));
	t  = FUNC6((t & LS1X_YEAR_MASK), FUNC3(v),
			FUNC0(v), FUNC1(v),
			FUNC2(v), FUNC4(v));
	FUNC8(t, rtm);

	return 0;
}