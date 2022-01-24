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
 int WM8350_LDO1_HIB_MODE_DIS ; 
 int WM8350_LDO1_HIB_MODE_MASK ; 
 int WM8350_LDO1_LOW_POWER ; 
 int WM8350_LDO2_LOW_POWER ; 
 int WM8350_LDO3_LOW_POWER ; 
 int WM8350_LDO4_LOW_POWER ; 
#define  WM8350_LDO_1 131 
#define  WM8350_LDO_2 130 
#define  WM8350_LDO_3 129 
#define  WM8350_LDO_4 128 
 struct wm8350* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct wm8350*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wm8350*,int,int) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev)
{
	struct wm8350 *wm8350 = FUNC0(rdev);
	int volt_reg, ldo = FUNC1(rdev);
	u16 val;

	switch (ldo) {
	case WM8350_LDO_1:
		volt_reg = WM8350_LDO1_LOW_POWER;
		break;
	case WM8350_LDO_2:
		volt_reg = WM8350_LDO2_LOW_POWER;
		break;
	case WM8350_LDO_3:
		volt_reg = WM8350_LDO3_LOW_POWER;
		break;
	case WM8350_LDO_4:
		volt_reg = WM8350_LDO4_LOW_POWER;
		break;
	default:
		return -EINVAL;
	}

	/* all LDOs have same mV bits */
	val = FUNC2(wm8350, volt_reg) & ~WM8350_LDO1_HIB_MODE_MASK;
	FUNC3(wm8350, volt_reg, val | WM8350_LDO1_HIB_MODE_DIS);
	return 0;
}