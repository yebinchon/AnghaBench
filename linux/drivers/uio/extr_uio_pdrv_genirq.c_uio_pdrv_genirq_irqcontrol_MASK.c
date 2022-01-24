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
struct uio_pdrv_genirq_platdata {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct uio_info {int /*<<< orphan*/  irq; struct uio_pdrv_genirq_platdata* priv; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  UIO_IRQ_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct uio_info *dev_info, s32 irq_on)
{
	struct uio_pdrv_genirq_platdata *priv = dev_info->priv;
	unsigned long flags;

	/* Allow user space to enable and disable the interrupt
	 * in the interrupt controller, but keep track of the
	 * state to prevent per-irq depth damage.
	 *
	 * Serialize this operation to support multiple tasks and concurrency
	 * with irq handler on SMP systems.
	 */

	FUNC4(&priv->lock, flags);
	if (irq_on) {
		if (FUNC0(UIO_IRQ_DISABLED, &priv->flags))
			FUNC3(dev_info->irq);
	} else {
		if (!FUNC1(UIO_IRQ_DISABLED, &priv->flags))
			FUNC2(dev_info->irq);
	}
	FUNC5(&priv->lock, flags);

	return 0;
}