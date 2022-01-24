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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct lpc32xx_udc {int /*<<< orphan*/  usb_slv_clk; int /*<<< orphan*/  udca_p_base; int /*<<< orphan*/  udca_v_base; int /*<<< orphan*/  dd_cache; scalar_t__ driver; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  UDCA_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct lpc32xx_udc* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpc32xx_udc*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lpc32xx_udc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct lpc32xx_udc *udc = FUNC4(pdev);

	FUNC9(&udc->gadget);
	if (udc->driver)
		return -EBUSY;

	FUNC7(udc, 1);
	FUNC8(udc);
	FUNC5(udc, 0);

	FUNC1(&pdev->dev, 0);
	FUNC6(udc);

	FUNC3(udc->dd_cache);
	FUNC2(&pdev->dev, UDCA_BUFF_SIZE,
			  udc->udca_v_base, udc->udca_p_base);

	FUNC0(udc->usb_slv_clk);

	return 0;
}