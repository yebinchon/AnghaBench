#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wm831x_pdata {int wm831x_num; } ;
struct TYPE_7__ {int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct wm831x_backup {int /*<<< orphan*/  backup; TYPE_3__ backup_desc; int /*<<< orphan*/  name; struct wm831x* wm831x; } ;
struct wm831x {TYPE_1__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {struct wm831x_pdata* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct wm831x* FUNC2 (int /*<<< orphan*/ ) ; 
 struct wm831x_backup* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct wm831x_backup*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  wm831x_backup_get_prop ; 
 int /*<<< orphan*/  wm831x_backup_props ; 
 int /*<<< orphan*/  FUNC7 (struct wm831x*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct wm831x *wm831x = FUNC2(pdev->dev.parent);
	struct wm831x_pdata *wm831x_pdata = wm831x->dev->platform_data;
	struct wm831x_backup *devdata;

	devdata = FUNC3(&pdev->dev, sizeof(struct wm831x_backup),
				GFP_KERNEL);
	if (devdata == NULL)
		return -ENOMEM;

	devdata->wm831x = wm831x;
	FUNC4(pdev, devdata);

	/* We ignore configuration failures since we can still read
	 * back the status without enabling the charger (which may
	 * already be enabled anyway).
	 */
	FUNC7(wm831x);

	if (wm831x_pdata && wm831x_pdata->wm831x_num)
		FUNC6(devdata->name, sizeof(devdata->name),
			 "wm831x-backup.%d", wm831x_pdata->wm831x_num);
	else
		FUNC6(devdata->name, sizeof(devdata->name),
			 "wm831x-backup");

	devdata->backup_desc.name = devdata->name;
	devdata->backup_desc.type = POWER_SUPPLY_TYPE_BATTERY;
	devdata->backup_desc.properties = wm831x_backup_props;
	devdata->backup_desc.num_properties = FUNC0(wm831x_backup_props);
	devdata->backup_desc.get_property = wm831x_backup_get_prop;
	devdata->backup = FUNC5(&pdev->dev,
						&devdata->backup_desc, NULL);

	return FUNC1(devdata->backup);
}