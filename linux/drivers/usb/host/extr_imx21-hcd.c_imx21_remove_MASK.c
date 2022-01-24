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
struct usb_hcd {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct imx21 {int /*<<< orphan*/  regs; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct imx21* FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC5 (struct platform_device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct imx21*) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC5(pdev);
	struct imx21 *imx21 = FUNC2(hcd);
	struct resource *res = FUNC6(pdev, IORESOURCE_MEM, 0);

	FUNC8(imx21);
	FUNC10(hcd);

	if (res != NULL) {
		FUNC0(imx21->clk);
		FUNC1(imx21->clk);
		FUNC3(imx21->regs);
		FUNC7(res->start, FUNC9(res));
	}

	FUNC4(hcd);
	return 0;
}