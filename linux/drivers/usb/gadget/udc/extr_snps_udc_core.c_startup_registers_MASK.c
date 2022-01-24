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
typedef  int /*<<< orphan*/  u32 ;
struct udc {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDC_DEVCFG_SPD ; 
 int /*<<< orphan*/  UDC_DEVCFG_SPD_FS ; 
 int /*<<< orphan*/  UDC_DEVCFG_SPD_HS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct udc*) ; 
 int /*<<< orphan*/  FUNC5 (struct udc*) ; 
 scalar_t__ use_fullspeed ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct udc *dev)
{
	u32 tmp;

	/* init controller by soft reset */
	FUNC5(dev);

	/* mask not needed interrupts */
	FUNC3(dev);

	/* put into initial config */
	FUNC2(dev);
	/* link up all endpoints */
	FUNC4(dev);

	/* program speed */
	tmp = FUNC1(&dev->regs->cfg);
	if (use_fullspeed)
		tmp = FUNC0(tmp, UDC_DEVCFG_SPD_FS, UDC_DEVCFG_SPD);
	else
		tmp = FUNC0(tmp, UDC_DEVCFG_SPD_HS, UDC_DEVCFG_SPD);
	FUNC6(tmp, &dev->regs->cfg);

	return 0;
}