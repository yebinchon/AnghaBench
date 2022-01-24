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
struct platform_device {int dummy; } ;
struct dsi_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct dsi_data* FUNC2 (struct platform_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC2(dsidev);
	int r;

	FUNC0("dsi_runtime_put\n");

	r = FUNC3(&dsi->pdev->dev);
	FUNC1(r < 0 && r != -ENOSYS);
}