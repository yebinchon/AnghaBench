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
typedef  int u32 ;
typedef  int u16 ;
struct wm831x_rtc {int /*<<< orphan*/  wm831x; } ;
struct rtc_wkalrm {int enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM831X_RTC_ALARM_1 ; 
 int WM831X_RTC_ALM_ENA ; 
 int /*<<< orphan*/  WM831X_RTC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct wm831x_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct wm831x_rtc *wm831x_rtc = FUNC1(dev);
	int ret;
	u16 data[2];
	u32 time;

	ret = FUNC3(wm831x_rtc->wm831x, WM831X_RTC_ALARM_1,
			       2, data);
	if (ret != 0) {
		FUNC0(dev, "Failed to read alarm time: %d\n", ret);
		return ret;
	}

	time = (data[0] << 16) | data[1];

	FUNC2(time, &alrm->time);

	ret = FUNC4(wm831x_rtc->wm831x, WM831X_RTC_CONTROL);
	if (ret < 0) {
		FUNC0(dev, "Failed to read RTC control: %d\n", ret);
		return ret;
	}

	if (ret & WM831X_RTC_ALM_ENA)
		alrm->enabled = 1;
	else
		alrm->enabled = 0;

	return 0;
}