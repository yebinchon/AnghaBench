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
typedef  int u32 ;
struct mtu3 {int /*<<< orphan*/  lock; int /*<<< orphan*/  mac_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int BMU_INTR ; 
 int EP_CTRL_INTR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MAC2_INTR ; 
 int MAC3_INTR ; 
 int QMU_INTR ; 
 int /*<<< orphan*/  U3D_LV1IER ; 
 int /*<<< orphan*/  U3D_LV1ISR ; 
 int /*<<< orphan*/  FUNC0 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtu3*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct mtu3 *mtu = (struct mtu3 *)data;
	unsigned long flags;
	u32 level1;

	FUNC6(&mtu->lock, flags);

	/* U3D_LV1ISR is RU */
	level1 = FUNC3(mtu->mac_base, U3D_LV1ISR);
	level1 &= FUNC3(mtu->mac_base, U3D_LV1IER);

	if (level1 & EP_CTRL_INTR)
		FUNC1(mtu);

	if (level1 & MAC2_INTR)
		FUNC4(mtu);

	if (level1 & MAC3_INTR)
		FUNC5(mtu);

	if (level1 & BMU_INTR)
		FUNC0(mtu);

	if (level1 & QMU_INTR)
		FUNC2(mtu);

	FUNC7(&mtu->lock, flags);

	return IRQ_HANDLED;
}