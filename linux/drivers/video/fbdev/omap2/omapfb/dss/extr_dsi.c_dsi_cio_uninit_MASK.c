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
struct platform_device {int dummy; } ;
struct dsi_data {int /*<<< orphan*/  module_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CLK_CTRL ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 struct dsi_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC3(dsidev);

	/* DDR_CLK_ALWAYS_ON */
	FUNC0(dsidev, DSI_CLK_CTRL, 0, 13, 13);

	FUNC1(dsidev, DSI_COMPLEXIO_POWER_OFF);
	FUNC2(dsidev);
	FUNC5(dsi->module_id, FUNC4(dsidev));
}