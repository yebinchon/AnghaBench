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
struct pxa_udc {int /*<<< orphan*/  clk; int /*<<< orphan*/ * transceiver; int /*<<< orphan*/  gadget; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pxa_udc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  pxa27x_udc_phy ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_udc*) ; 
 int /*<<< orphan*/ * the_controller ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *_dev)
{
	struct pxa_udc *udc = FUNC2(_dev);

	FUNC4(&udc->gadget);
	FUNC3(udc);

	if (!FUNC0(udc->transceiver)) {
		FUNC6(udc->transceiver, &pxa27x_udc_phy);
		FUNC5(udc->transceiver);
	}

	udc->transceiver = NULL;
	the_controller = NULL;
	FUNC1(udc->clk);

	return 0;
}