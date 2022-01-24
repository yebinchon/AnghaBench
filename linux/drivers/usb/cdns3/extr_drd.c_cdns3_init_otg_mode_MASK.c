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
struct cdns3 {TYPE_1__* otg_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ivect; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_DR_MODE_OTG ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3*) ; 
 int FUNC2 (struct cdns3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cdns3 *cdns)
{
	int ret = 0;

	FUNC0(cdns);
	/* clear all interrupts */
	FUNC3(~0, &cdns->otg_regs->ivect);

	ret = FUNC2(cdns, USB_DR_MODE_OTG);
	if (ret)
		return ret;

	FUNC1(cdns);
	return ret;
}