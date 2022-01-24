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
struct dsi_data {scalar_t__ scp_clk_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CLK_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct dsi_data* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static void FUNC3(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC2(dsidev);

	FUNC1(dsi->scp_clk_refcount == 0);
	if (--dsi->scp_clk_refcount == 0)
		FUNC0(dsidev, DSI_CLK_CTRL, 0, 14, 14); /* CIO_CLK_ICG */
}