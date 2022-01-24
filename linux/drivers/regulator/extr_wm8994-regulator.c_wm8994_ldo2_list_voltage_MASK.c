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
struct wm8994_ldo {TYPE_1__* wm8994; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM1811 130 
#define  WM8958 129 
#define  WM8994 128 
 unsigned int WM8994_LDO2_MAX_SELECTOR ; 
 struct wm8994_ldo* FUNC0 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC1(struct regulator_dev *rdev,
				    unsigned int selector)
{
	struct wm8994_ldo *ldo = FUNC0(rdev);

	if (selector > WM8994_LDO2_MAX_SELECTOR)
		return -EINVAL;

	switch (ldo->wm8994->type) {
	case WM8994:
		return (selector * 100000) + 900000;
	case WM8958:
		return (selector * 100000) + 1000000;
	case WM1811:
		switch (selector) {
		case 0:
			return -EINVAL;
		default:
			return (selector * 100000) + 950000;
		}
		break;
	default:
		return -EINVAL;
	}
}