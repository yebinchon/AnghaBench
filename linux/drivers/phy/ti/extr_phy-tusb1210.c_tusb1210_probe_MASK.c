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
typedef  int u8 ;
struct ulpi {int /*<<< orphan*/  dev; } ;
struct tusb1210 {int vendor_specific2; void* phy; struct ulpi* ulpi; void* gpio_cs; void* gpio_reset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  TUSB1210_VENDOR_SPECIFIC2 ; 
 int TUSB1210_VENDOR_SPECIFIC2_DP_SHIFT ; 
 int TUSB1210_VENDOR_SPECIFIC2_IHSTX_SHIFT ; 
 int TUSB1210_VENDOR_SPECIFIC2_ZHSDRV_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct tusb1210* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int /*<<< orphan*/  phy_ops ; 
 int /*<<< orphan*/  FUNC6 (void*,struct tusb1210*) ; 
 void* FUNC7 (struct ulpi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ulpi*,struct tusb1210*) ; 
 int /*<<< orphan*/  FUNC9 (struct ulpi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct ulpi *ulpi)
{
	struct tusb1210 *tusb;
	u8 val, reg;

	tusb = FUNC4(&ulpi->dev, sizeof(*tusb), GFP_KERNEL);
	if (!tusb)
		return -ENOMEM;

	tusb->gpio_reset = FUNC3(&ulpi->dev, "reset",
						   GPIOD_OUT_LOW);
	if (FUNC0(tusb->gpio_reset))
		return FUNC1(tusb->gpio_reset);

	FUNC5(tusb->gpio_reset, 1);

	tusb->gpio_cs = FUNC3(&ulpi->dev, "cs",
						GPIOD_OUT_LOW);
	if (FUNC0(tusb->gpio_cs))
		return FUNC1(tusb->gpio_cs);

	FUNC5(tusb->gpio_cs, 1);

	/*
	 * VENDOR_SPECIFIC2 register in TUSB1210 can be used for configuring eye
	 * diagram optimization and DP/DM swap.
	 */

	/* High speed output drive strength configuration */
	FUNC2(&ulpi->dev, "ihstx", &val);
	reg = val << TUSB1210_VENDOR_SPECIFIC2_IHSTX_SHIFT;

	/* High speed output impedance configuration */
	FUNC2(&ulpi->dev, "zhsdrv", &val);
	reg |= val << TUSB1210_VENDOR_SPECIFIC2_ZHSDRV_SHIFT;

	/* DP/DM swap control */
	FUNC2(&ulpi->dev, "datapolarity", &val);
	reg |= val << TUSB1210_VENDOR_SPECIFIC2_DP_SHIFT;

	if (reg) {
		FUNC9(ulpi, TUSB1210_VENDOR_SPECIFIC2, reg);
		tusb->vendor_specific2 = reg;
	}

	tusb->phy = FUNC7(ulpi, &phy_ops);
	if (FUNC0(tusb->phy))
		return FUNC1(tusb->phy);

	tusb->ulpi = ulpi;

	FUNC6(tusb->phy, tusb);
	FUNC8(ulpi, tusb);
	return 0;
}