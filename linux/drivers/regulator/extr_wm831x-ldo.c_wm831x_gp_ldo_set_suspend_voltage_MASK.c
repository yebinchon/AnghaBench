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
struct wm831x_ldo {int base; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM831X_LDO1_ON_VSEL_MASK ; 
 int WM831X_LDO_SLEEP_CONTROL ; 
 struct wm831x_ldo* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*,int,int) ; 
 int FUNC2 (struct wm831x*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
					     int uV)
{
	struct wm831x_ldo *ldo = FUNC0(rdev);
	struct wm831x *wm831x = ldo->wm831x;
	int sel, reg = ldo->base + WM831X_LDO_SLEEP_CONTROL;

	sel = FUNC1(rdev, uV, uV);
	if (sel < 0)
		return sel;

	return FUNC2(wm831x, reg, WM831X_LDO1_ON_VSEL_MASK, sel);
}