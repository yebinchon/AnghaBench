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
typedef  int u32 ;
struct udc {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  irqmsk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct udc*,char*) ; 
 int /*<<< orphan*/  UDC_DEVINT_ENUM ; 
 int /*<<< orphan*/  UDC_DEVINT_SC ; 
 int /*<<< orphan*/  UDC_DEVINT_SI ; 
 int /*<<< orphan*/  UDC_DEVINT_SVC ; 
 int /*<<< orphan*/  UDC_DEVINT_UR ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

int FUNC4(struct udc *dev)
{
	u32 tmp;

	FUNC1(dev, "enable device interrupts for setup data\n");

	/* read irq mask */
	tmp = FUNC2(&dev->regs->irqmsk);

	/* enable SET_INTERFACE, SET_CONFIG and other needed irq's */
	tmp &= FUNC0(UDC_DEVINT_SI)
		& FUNC0(UDC_DEVINT_SC)
		& FUNC0(UDC_DEVINT_UR)
		& FUNC0(UDC_DEVINT_SVC)
		& FUNC0(UDC_DEVINT_ENUM);
	FUNC3(tmp, &dev->regs->irqmsk);

	return 0;
}