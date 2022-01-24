#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ done; scalar_t__ dc_clk; scalar_t__ hhc_clk; scalar_t__ clk_requested; int /*<<< orphan*/ * transceiver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UDC_SYSCON1 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* udc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct device *dev)
{
	FUNC6(udc);
	if (!FUNC0(udc->transceiver)) {
		FUNC8(udc->transceiver);
		udc->transceiver = NULL;
	}
	FUNC5(0, UDC_SYSCON1);
	FUNC7();
	if (udc->dc_clk) {
		if (udc->clk_requested)
			FUNC4(0);
		FUNC1(udc->hhc_clk);
		FUNC1(udc->dc_clk);
	}
	if (udc->done)
		FUNC2(udc->done);
	FUNC3(udc);
}