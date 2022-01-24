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
struct TYPE_2__ {int isink_A_dcdc; int isink_B_dcdc; } ;
struct wm8350 {TYPE_1__ pmic; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int WM8350_CS1_DRIVE ; 
 int WM8350_CS1_ENA ; 
 int WM8350_CS2_DRIVE ; 
 int WM8350_CS2_ENA ; 
 int /*<<< orphan*/  WM8350_CSA_FLASH_CONTROL ; 
 int /*<<< orphan*/  WM8350_CSB_FLASH_CONTROL ; 
 int WM8350_DCDC_1 ; 
#define  WM8350_DCDC_2 131 
#define  WM8350_DCDC_5 130 
 int /*<<< orphan*/  WM8350_DCDC_LDO_REQUESTED ; 
#define  WM8350_ISINK_A 129 
#define  WM8350_ISINK_B 128 
 int /*<<< orphan*/  WM8350_POWER_MGMT_7 ; 
 struct wm8350* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wm8350*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev)
{
	struct wm8350 *wm8350 = FUNC0(rdev);
	int isink = FUNC1(rdev);

	switch (isink) {
	case WM8350_ISINK_A:
		switch (wm8350->pmic.isink_A_dcdc) {
		case WM8350_DCDC_2:
		case WM8350_DCDC_5:
			FUNC2(wm8350, WM8350_POWER_MGMT_7,
					WM8350_CS1_ENA);
			FUNC2(wm8350, WM8350_CSA_FLASH_CONTROL,
					WM8350_CS1_DRIVE);
			FUNC2(wm8350, WM8350_DCDC_LDO_REQUESTED,
					1 << (wm8350->pmic.isink_A_dcdc -
					      WM8350_DCDC_1));
			break;
		default:
			return -EINVAL;
		}
		break;
	case WM8350_ISINK_B:
		switch (wm8350->pmic.isink_B_dcdc) {
		case WM8350_DCDC_2:
		case WM8350_DCDC_5:
			FUNC2(wm8350, WM8350_POWER_MGMT_7,
					WM8350_CS2_ENA);
			FUNC2(wm8350, WM8350_CSB_FLASH_CONTROL,
					WM8350_CS2_DRIVE);
			FUNC2(wm8350, WM8350_DCDC_LDO_REQUESTED,
					1 << (wm8350->pmic.isink_B_dcdc -
					      WM8350_DCDC_1));
			break;
		default:
			return -EINVAL;
		}
		break;
	default:
		return -EINVAL;
	}
	return 0;
}