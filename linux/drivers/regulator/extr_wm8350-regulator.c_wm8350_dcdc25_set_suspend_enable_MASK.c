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
typedef  int u16 ;
struct wm8350 {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int WM8350_DC2_HIB_MODE_ACTIVE ; 
 int WM8350_DC2_HIB_MODE_MASK ; 
 int WM8350_DC2_HIB_MODE_SHIFT ; 
 int WM8350_DC5_HIB_MODE_ACTIVE ; 
 int WM8350_DC5_HIB_MODE_MASK ; 
 int WM8350_DC5_HIB_MODE_SHIFT ; 
 int /*<<< orphan*/  WM8350_DCDC2_CONTROL ; 
 int /*<<< orphan*/  WM8350_DCDC5_CONTROL ; 
#define  WM8350_DCDC_2 129 
#define  WM8350_DCDC_5 128 
 struct wm8350* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct wm8350 *wm8350 = FUNC0(rdev);
	int dcdc = FUNC1(rdev);
	u16 val;

	switch (dcdc) {
	case WM8350_DCDC_2:
		val = FUNC2(wm8350, WM8350_DCDC2_CONTROL)
		    & ~WM8350_DC2_HIB_MODE_MASK;
		FUNC3(wm8350, WM8350_DCDC2_CONTROL, val |
		    (WM8350_DC2_HIB_MODE_ACTIVE << WM8350_DC2_HIB_MODE_SHIFT));
		break;
	case WM8350_DCDC_5:
		val = FUNC2(wm8350, WM8350_DCDC5_CONTROL)
		    & ~WM8350_DC5_HIB_MODE_MASK;
		FUNC3(wm8350, WM8350_DCDC5_CONTROL, val |
		    (WM8350_DC5_HIB_MODE_ACTIVE << WM8350_DC5_HIB_MODE_SHIFT));
		break;
	default:
		return -EINVAL;
	}
	return 0;
}