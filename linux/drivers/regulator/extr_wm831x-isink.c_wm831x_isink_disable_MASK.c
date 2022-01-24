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
struct wm831x_isink {int /*<<< orphan*/  reg; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM831X_CS1_DRIVE ; 
 int /*<<< orphan*/  WM831X_CS1_ENA ; 
 struct wm831x_isink* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct wm831x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	struct wm831x_isink *isink = FUNC0(rdev);
	struct wm831x *wm831x = isink->wm831x;
	int ret;

	ret = FUNC1(wm831x, isink->reg, WM831X_CS1_DRIVE, 0);
	if (ret < 0)
		return ret;

	ret = FUNC1(wm831x, isink->reg, WM831X_CS1_ENA, 0);
	if (ret < 0)
		return ret;

	return ret;

}