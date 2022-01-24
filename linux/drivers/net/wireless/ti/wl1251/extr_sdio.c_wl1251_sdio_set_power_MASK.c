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
struct wl1251 {int /*<<< orphan*/  power_gpio; } ;
struct sdio_func {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 struct sdio_func* FUNC8 (struct wl1251*) ; 

__attribute__((used)) static int FUNC9(struct wl1251 *wl, bool enable)
{
	struct sdio_func *func = FUNC8(wl);
	int ret;

	if (enable) {
		/*
		 * Power is controlled by runtime PM, but we still call board
		 * callback in case it wants to do any additional setup,
		 * for example enabling clock buffer for the module.
		 */
		if (FUNC0(wl->power_gpio))
			FUNC1(wl->power_gpio, true);


		ret = FUNC2(&func->dev);
		if (ret < 0) {
			FUNC3(&func->dev);
			goto out;
		}

		FUNC4(func);
		FUNC6(func);
		FUNC7(func);
	} else {
		FUNC4(func);
		FUNC5(func);
		FUNC7(func);

		ret = FUNC3(&func->dev);
		if (ret < 0)
			goto out;

		if (FUNC0(wl->power_gpio))
			FUNC1(wl->power_gpio, false);
	}

out:
	return ret;
}