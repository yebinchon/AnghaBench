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
struct wm831x_rtc {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  WM831X_RTC_CONTROL ; 
 int WM831X_RTC_SYNC_BUSY ; 
 int /*<<< orphan*/  WM831X_RTC_TIME_1 ; 
 int /*<<< orphan*/  WM831X_RTC_TIME_2 ; 
 int WM831X_SET_TIME_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct wm831x_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (struct rtc_time*) ; 
 int FUNC4 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wm831x*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC6 (struct device*,struct rtc_time*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct wm831x_rtc *wm831x_rtc = FUNC1(dev);
	struct wm831x *wm831x = wm831x_rtc->wm831x;
	struct rtc_time new_tm;
	unsigned long time, new_time;
	int ret;
	int count = 0;

	time = FUNC3(tm);

	ret = FUNC5(wm831x, WM831X_RTC_TIME_1,
			       (time >> 16) & 0xffff);
	if (ret < 0) {
		FUNC0(dev, "Failed to write TIME_1: %d\n", ret);
		return ret;
	}

	ret = FUNC5(wm831x, WM831X_RTC_TIME_2, time & 0xffff);
	if (ret < 0) {
		FUNC0(dev, "Failed to write TIME_2: %d\n", ret);
		return ret;
	}

	/* Wait for the update to complete - should happen first time
	 * round but be conservative.
	 */
	do {
		FUNC2(1);

		ret = FUNC4(wm831x, WM831X_RTC_CONTROL);
		if (ret < 0)
			ret = WM831X_RTC_SYNC_BUSY;
	} while (!(ret & WM831X_RTC_SYNC_BUSY) &&
		 ++count < WM831X_SET_TIME_RETRIES);

	if (ret & WM831X_RTC_SYNC_BUSY) {
		FUNC0(dev, "Timed out writing RTC update\n");
		return -EIO;
	}

	/* Check that the update was accepted; security features may
	 * have caused the update to be ignored.
	 */
	ret = FUNC6(dev, &new_tm);
	if (ret < 0)
		return ret;

	new_time = FUNC3(&new_tm);

	/* Allow a second of change in case of tick */
	if (new_time - time > 1) {
		FUNC0(dev, "RTC update not permitted by hardware\n");
		return -EPERM;
	}

	return 0;
}