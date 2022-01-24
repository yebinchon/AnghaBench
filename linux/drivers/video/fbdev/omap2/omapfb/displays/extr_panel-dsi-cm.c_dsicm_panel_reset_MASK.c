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
struct panel_drv_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct panel_drv_data*) ; 
 int FUNC3 (struct panel_drv_data*) ; 

__attribute__((used)) static int FUNC4(struct panel_drv_data *ddata)
{
	FUNC0(&ddata->pdev->dev, "performing LCD reset\n");

	FUNC2(ddata);
	FUNC1(ddata);
	return FUNC3(ddata);
}