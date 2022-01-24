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
struct rtc_device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU1000_SYS_CNTRCTRL ; 
 int /*<<< orphan*/  AU1000_SYS_TOYTRIM ; 
 unsigned long CNTR_OK ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int SYS_CNTRL_C0S ; 
 int SYS_CNTRL_T0S ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  au1xtoy_rtc_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct rtc_device* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct rtc_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct rtc_device *rtcdev;
	unsigned long t;
	int ret;

	t = FUNC2(AU1000_SYS_CNTRCTRL);
	if (!(t & CNTR_OK)) {
		FUNC4(&pdev->dev, "counters not working; aborting.\n");
		ret = -ENODEV;
		goto out_err;
	}

	ret = -ETIMEDOUT;

	/* set counter0 tickrate to 1Hz if necessary */
	if (FUNC2(AU1000_SYS_TOYTRIM) != 32767) {
		/* wait until hardware gives access to TRIM register */
		t = 0x00100000;
		while ((FUNC2(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_T0S) && --t)
			FUNC6(1);

		if (!t) {
			/* timed out waiting for register access; assume
			 * counters are unusable.
			 */
			FUNC4(&pdev->dev, "timeout waiting for access\n");
			goto out_err;
		}

		/* set 1Hz TOY tick rate */
		FUNC3(32767, AU1000_SYS_TOYTRIM);
	}

	/* wait until the hardware allows writes to the counter reg */
	while (FUNC2(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_C0S)
		FUNC6(1);

	rtcdev = FUNC5(&pdev->dev, "rtc-au1xxx",
				     &au1xtoy_rtc_ops, THIS_MODULE);
	if (FUNC0(rtcdev)) {
		ret = FUNC1(rtcdev);
		goto out_err;
	}

	FUNC7(pdev, rtcdev);

	return 0;

out_err:
	return ret;
}