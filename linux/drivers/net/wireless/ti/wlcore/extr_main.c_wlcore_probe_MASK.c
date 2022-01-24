#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wlcore_platdev_data {TYPE_1__* family; } ;
struct wl1271 {TYPE_3__* dev; int /*<<< orphan*/  nvs_loading_complete; struct platform_device* pdev; int /*<<< orphan*/  ptable; int /*<<< orphan*/  ops; } ;
struct TYPE_10__ {TYPE_2__* driver; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pm; } ;
struct TYPE_8__ {char* nvs_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FW_ACTION_HOTPLUG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wlcore_platdev_data* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct wl1271*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,TYPE_3__*,int /*<<< orphan*/ ,struct wl1271*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,struct wl1271*)) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct wl1271*) ; 
 int /*<<< orphan*/  wlcore_pm_ops ; 

int FUNC9(struct wl1271 *wl, struct platform_device *pdev)
{
	struct wlcore_platdev_data *pdev_data = FUNC1(&pdev->dev);
	const char *nvs_name;
	int ret = 0;

	if (!wl->ops || !wl->ptable || !pdev_data)
		return -EINVAL;

	wl->dev = &pdev->dev;
	wl->pdev = pdev;
	FUNC2(pdev, wl);

	if (pdev_data->family && pdev_data->family->nvs_name) {
		nvs_name = pdev_data->family->nvs_name;
		ret = FUNC6(THIS_MODULE, FW_ACTION_HOTPLUG,
					      nvs_name, &pdev->dev, GFP_KERNEL,
					      wl, wlcore_nvs_cb);
		if (ret < 0) {
			FUNC7("request_firmware_nowait failed for %s: %d",
				     nvs_name, ret);
			FUNC0(&wl->nvs_loading_complete);
		}
	} else {
		FUNC8(NULL, wl);
	}

	wl->dev->driver->pm = &wlcore_pm_ops;
	FUNC4(wl->dev, 50);
	FUNC5(wl->dev);
	FUNC3(wl->dev);

	return ret;
}