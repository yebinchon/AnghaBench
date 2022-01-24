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
struct udc {int /*<<< orphan*/  lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct udc*,char*) ; 
 int /*<<< orphan*/  UDC_DEVCTL_RES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct udc *dev)
{
	unsigned long flags;
	u32 tmp;

	FUNC2(dev, "UDC initiates remote wakeup\n");

	FUNC4(&dev->lock, flags);

	tmp = FUNC3(&dev->regs->ctl);
	tmp |= FUNC0(UDC_DEVCTL_RES);
	FUNC6(tmp, &dev->regs->ctl);
	tmp &= FUNC1(UDC_DEVCTL_RES);
	FUNC6(tmp, &dev->regs->ctl);

	FUNC5(&dev->lock, flags);
	return 0;
}