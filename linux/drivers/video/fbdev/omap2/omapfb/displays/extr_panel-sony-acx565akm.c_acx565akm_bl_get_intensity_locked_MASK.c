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
struct panel_drv_data {int /*<<< orphan*/  mutex; } ;
struct backlight_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct backlight_device*) ; 
 struct panel_drv_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct backlight_device *dev)
{
	struct panel_drv_data *ddata = FUNC1(&dev->dev);
	int r;

	FUNC2(&ddata->mutex);
	r = FUNC0(dev);
	FUNC3(&ddata->mutex);

	return r;
}