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
struct dpi_data {struct regulator* vdds_dsi_reg; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FEAT_DPI_USES_VDDS_DSI ; 
 scalar_t__ FUNC1 (struct regulator*) ; 
 int FUNC2 (struct regulator*) ; 
 struct regulator* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dpi_data *dpi)
{
	struct regulator *vdds_dsi;

	if (!FUNC4(FEAT_DPI_USES_VDDS_DSI))
		return 0;

	if (dpi->vdds_dsi_reg)
		return 0;

	vdds_dsi = FUNC3(&dpi->pdev->dev, "vdds_dsi");
	if (FUNC1(vdds_dsi)) {
		if (FUNC2(vdds_dsi) != -EPROBE_DEFER)
			FUNC0("can't get VDDS_DSI regulator\n");
		return FUNC2(vdds_dsi);
	}

	dpi->vdds_dsi_reg = vdds_dsi;

	return 0;
}