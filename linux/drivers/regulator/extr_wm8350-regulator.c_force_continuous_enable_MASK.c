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

/* Variables and functions */
 int EINVAL ; 
 int WM8350_DCDC1_FORCE_PWM ; 
 int /*<<< orphan*/  WM8350_DCDC1_FORCE_PWM_ENA ; 
 int WM8350_DCDC3_FORCE_PWM ; 
 int WM8350_DCDC4_FORCE_PWM ; 
 int WM8350_DCDC6_FORCE_PWM ; 
#define  WM8350_DCDC_1 131 
#define  WM8350_DCDC_3 130 
#define  WM8350_DCDC_4 129 
#define  WM8350_DCDC_6 128 
 int FUNC0 (struct wm8350*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wm8350*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wm8350 *wm8350, int dcdc, int enable)
{
	int reg = 0, ret;

	switch (dcdc) {
	case WM8350_DCDC_1:
		reg = WM8350_DCDC1_FORCE_PWM;
		break;
	case WM8350_DCDC_3:
		reg = WM8350_DCDC3_FORCE_PWM;
		break;
	case WM8350_DCDC_4:
		reg = WM8350_DCDC4_FORCE_PWM;
		break;
	case WM8350_DCDC_6:
		reg = WM8350_DCDC6_FORCE_PWM;
		break;
	default:
		return -EINVAL;
	}

	if (enable)
		ret = FUNC1(wm8350, reg,
			WM8350_DCDC1_FORCE_PWM_ENA);
	else
		ret = FUNC0(wm8350, reg,
			WM8350_DCDC1_FORCE_PWM_ENA);
	return ret;
}