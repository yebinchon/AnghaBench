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
struct wl1271 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct wl1271 *wl, unsigned long value,
			    void *arg)
{
	int ret;
	int (*chip_op) (struct wl1271 *wl);

	if (!arg) {
		FUNC4("debugfs chip_op_handler with no callback");
		return;
	}

	ret = FUNC0(wl->dev);
	if (ret < 0) {
		FUNC3(wl->dev);

		return;
	}

	chip_op = arg;
	chip_op(wl);

	FUNC1(wl->dev);
	FUNC2(wl->dev);
}