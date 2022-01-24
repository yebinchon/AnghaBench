#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct wlcore_platdev_data {TYPE_2__* family; } ;
struct wl1271 {int /*<<< orphan*/  irq; TYPE_3__* dev; scalar_t__ irq_wake_enabled; int /*<<< orphan*/  wakeirq; int /*<<< orphan*/  initialized; int /*<<< orphan*/  nvs_loading_complete; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_12__ {TYPE_1__* driver; } ;
struct TYPE_11__ {scalar_t__ nvs_name; } ;
struct TYPE_10__ {int /*<<< orphan*/ * pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct wlcore_platdev_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct wl1271*) ; 
 struct wl1271* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1271*) ; 

int FUNC14(struct platform_device *pdev)
{
	struct wlcore_platdev_data *pdev_data = FUNC0(&pdev->dev);
	struct wl1271 *wl = FUNC6(pdev);
	int error;

	error = FUNC9(wl->dev);
	if (error < 0)
		FUNC2(wl->dev, "PM runtime failed: %i\n", error);

	wl->dev->driver->pm = NULL;

	if (pdev_data->family && pdev_data->family->nvs_name)
		FUNC11(&wl->nvs_loading_complete);
	if (!wl->initialized)
		return 0;

	if (wl->wakeirq >= 0) {
		FUNC1(wl->dev);
		wl->wakeirq = -ENODEV;
	}

	FUNC3(wl->dev, false);

	if (wl->irq_wake_enabled)
		FUNC4(wl->irq);

	FUNC12(wl);

	FUNC10(wl->dev);
	FUNC8(wl->dev);
	FUNC7(wl->dev);

	FUNC5(wl->irq, wl);
	FUNC13(wl);

	return 0;
}