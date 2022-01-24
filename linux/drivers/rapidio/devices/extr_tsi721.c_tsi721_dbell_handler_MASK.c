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
typedef  int /*<<< orphan*/  u32 ;
struct tsi721_device {int /*<<< orphan*/  idb_work; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDB_QUEUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSI721_SR_CHINT_IDBQRCV ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct tsi721_device *priv)
{
	u32 regval;

	/* Disable IDB interrupts */
	regval = FUNC1(priv->regs + FUNC0(IDB_QUEUE));
	regval &= ~TSI721_SR_CHINT_IDBQRCV;
	FUNC2(regval,
		priv->regs + FUNC0(IDB_QUEUE));

	FUNC3(&priv->idb_work);

	return 0;
}