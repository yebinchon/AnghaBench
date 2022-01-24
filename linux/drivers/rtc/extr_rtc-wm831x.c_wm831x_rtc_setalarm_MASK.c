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
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM831X_RTC_ALARM_1 ; 
 int /*<<< orphan*/  WM831X_RTC_ALARM_2 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct wm831x_rtc* FUNC1 (struct device*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wm831x*,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 (struct wm831x_rtc*) ; 
 int FUNC5 (struct wm831x_rtc*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct wm831x_rtc *wm831x_rtc = FUNC1(dev);
	struct wm831x *wm831x = wm831x_rtc->wm831x;
	int ret;
	unsigned long time;

	time = FUNC2(&alrm->time);

	ret = FUNC5(wm831x_rtc);
	if (ret < 0) {
		FUNC0(dev, "Failed to stop alarm: %d\n", ret);
		return ret;
	}

	ret = FUNC3(wm831x, WM831X_RTC_ALARM_1,
			       (time >> 16) & 0xffff);
	if (ret < 0) {
		FUNC0(dev, "Failed to write ALARM_1: %d\n", ret);
		return ret;
	}

	ret = FUNC3(wm831x, WM831X_RTC_ALARM_2, time & 0xffff);
	if (ret < 0) {
		FUNC0(dev, "Failed to write ALARM_2: %d\n", ret);
		return ret;
	}

	if (alrm->enabled) {
		ret = FUNC4(wm831x_rtc);
		if (ret < 0) {
			FUNC0(dev, "Failed to start alarm: %d\n", ret);
			return ret;
		}
	}

	return 0;
}