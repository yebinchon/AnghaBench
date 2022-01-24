#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {int dcdc1_hib_mode; int dcdc3_hib_mode; int dcdc4_hib_mode; int dcdc6_hib_mode; } ;
struct wm8350 {TYPE_1__ pmic; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8350_DCDC1_LOW_POWER ; 
 int /*<<< orphan*/  WM8350_DCDC3_LOW_POWER ; 
 int /*<<< orphan*/  WM8350_DCDC4_LOW_POWER ; 
 int /*<<< orphan*/  WM8350_DCDC6_LOW_POWER ; 
#define  WM8350_DCDC_1 133 
#define  WM8350_DCDC_2 132 
#define  WM8350_DCDC_3 131 
#define  WM8350_DCDC_4 130 
#define  WM8350_DCDC_5 129 
#define  WM8350_DCDC_6 128 
 int WM8350_DCDC_HIB_MODE_MASK ; 
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
	case WM8350_DCDC_1:
		val = FUNC2(wm8350, WM8350_DCDC1_LOW_POWER)
			& ~WM8350_DCDC_HIB_MODE_MASK;
		FUNC3(wm8350, WM8350_DCDC1_LOW_POWER,
			val | wm8350->pmic.dcdc1_hib_mode);
		break;
	case WM8350_DCDC_3:
		val = FUNC2(wm8350, WM8350_DCDC3_LOW_POWER)
			& ~WM8350_DCDC_HIB_MODE_MASK;
		FUNC3(wm8350, WM8350_DCDC3_LOW_POWER,
			val | wm8350->pmic.dcdc3_hib_mode);
		break;
	case WM8350_DCDC_4:
		val = FUNC2(wm8350, WM8350_DCDC4_LOW_POWER)
			& ~WM8350_DCDC_HIB_MODE_MASK;
		FUNC3(wm8350, WM8350_DCDC4_LOW_POWER,
			val | wm8350->pmic.dcdc4_hib_mode);
		break;
	case WM8350_DCDC_6:
		val = FUNC2(wm8350, WM8350_DCDC6_LOW_POWER)
			& ~WM8350_DCDC_HIB_MODE_MASK;
		FUNC3(wm8350, WM8350_DCDC6_LOW_POWER,
			val | wm8350->pmic.dcdc6_hib_mode);
		break;
	case WM8350_DCDC_2:
	case WM8350_DCDC_5:
	default:
		return -EINVAL;
	}

	return 0;
}