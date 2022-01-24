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
struct regulator {int dummy; } ;
struct platform_device {int dummy; } ;
struct dsi_data {struct regulator* vdds_dsi_reg; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 struct regulator* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct dsi_data* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC4(dsidev);
	struct regulator *vdds_dsi;

	if (dsi->vdds_dsi_reg != NULL)
		return 0;

	vdds_dsi = FUNC3(&dsi->pdev->dev, "vdd");

	if (FUNC1(vdds_dsi)) {
		if (FUNC2(vdds_dsi) != -EPROBE_DEFER)
			FUNC0("can't get DSI VDD regulator\n");
		return FUNC2(vdds_dsi);
	}

	dsi->vdds_dsi_reg = vdds_dsi;

	return 0;
}