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
struct dsi_data {scalar_t__ module_id; int /*<<< orphan*/  pll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI ; 
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI ; 
 int /*<<< orphan*/  OMAP_DSS_CLK_SRC_FCK ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 struct dsi_data* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int) ; 
 int FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC6(dsidev);
	int r;

	r = FUNC13(&dsi->pll);
	if (r)
		goto err0;

	r = FUNC4(dsidev);
	if (r)
		goto err1;

	FUNC14(dsi->module_id, dsi->module_id == 0 ?
			OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI :
			OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI);

	FUNC0("PLL OK\n");

	r = FUNC2(dsidev);
	if (r)
		goto err2;

	FUNC1(dsidev);

	FUNC9(dsidev);
	FUNC10(dsidev);

	if (1)
		FUNC1(dsidev);

	r = FUNC8(dsidev);
	if (r)
		goto err3;

	/* enable interface */
	FUNC11(dsidev, 0, 1);
	FUNC11(dsidev, 1, 1);
	FUNC11(dsidev, 2, 1);
	FUNC11(dsidev, 3, 1);
	FUNC7(dsidev, 1);
	FUNC5(dsidev);

	return 0;
err3:
	FUNC3(dsidev);
err2:
	FUNC14(dsi->module_id, OMAP_DSS_CLK_SRC_FCK);
err1:
	FUNC12(&dsi->pll);
err0:
	return r;
}