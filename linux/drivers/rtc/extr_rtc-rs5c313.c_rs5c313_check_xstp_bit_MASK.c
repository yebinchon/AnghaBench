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
struct rtc_time {int tm_mday; int tm_mon; int tm_year; } ;

/* Variables and functions */
 int /*<<< orphan*/  RS5C313_CEDISABLE ; 
 int /*<<< orphan*/  RS5C313_CEENABLE ; 
 int RS5C313_CNTREG_ADJ_BSY ; 
 int RS5C313_CNTREG_WTEN_XSTP ; 
 int /*<<< orphan*/  RS5C313_MISCOP ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_time*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct rtc_time tm;
	int cnt;

	RS5C313_CEENABLE;	/* CE:H */
	if (FUNC3() & RS5C313_CNTREG_WTEN_XSTP) {
		/* INT interval reg. OFF */
		FUNC6(0x00);
		/* Initialize control reg. 24 hour & adjust */
		FUNC5(0x07);

		/* busy check. */
		for (cnt = 0; cnt < 100; cnt++) {
			if (!(FUNC3() & RS5C313_CNTREG_ADJ_BSY))
				break;
			RS5C313_MISCOP;
		}

		FUNC0(&tm, 0, sizeof(struct rtc_time));
		tm.tm_mday	= 1;
		tm.tm_mon	= 1 - 1;
		tm.tm_year	= 2000 - 1900;

		FUNC4(NULL, &tm);
		FUNC2("invalid value, resetting to 1 Jan 2000\n");
	}
	RS5C313_CEDISABLE;
	FUNC1(700);		/* CE:L */
}