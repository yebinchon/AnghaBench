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
struct wm8350 {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  WM8350_BATTERY_CHARGER_CONTROL_2 ; 
#define  WM8350_CHG_STS_FAST 130 
 int WM8350_CHG_STS_MASK ; 
#define  WM8350_CHG_STS_OFF 129 
#define  WM8350_CHG_STS_TRICKLE 128 
 struct wm8350* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int FUNC2 (struct wm8350*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct wm8350 *wm8350 = FUNC0(dev);
	char *charge;
	int state;

	state = FUNC2(wm8350, WM8350_BATTERY_CHARGER_CONTROL_2) &
	    WM8350_CHG_STS_MASK;
	switch (state) {
	case WM8350_CHG_STS_OFF:
		charge = "Charger Off";
		break;
	case WM8350_CHG_STS_TRICKLE:
		charge = "Trickle Charging";
		break;
	case WM8350_CHG_STS_FAST:
		charge = "Fast Charging";
		break;
	default:
		return 0;
	}

	return FUNC1(buf, "%s\n", charge);
}