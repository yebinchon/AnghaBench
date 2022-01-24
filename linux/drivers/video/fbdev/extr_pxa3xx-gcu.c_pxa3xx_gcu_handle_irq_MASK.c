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
struct pxa3xx_gcu_shared {int /*<<< orphan*/  num_done; scalar_t__ hw_running; int /*<<< orphan*/  num_idle; int /*<<< orphan*/  num_interrupts; } ;
struct pxa3xx_gcu_priv {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  wait_idle; scalar_t__ ready; int /*<<< orphan*/  wait_free; struct pxa3xx_gcu_shared* shared; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IE_ALL ; 
 int IE_EEOB ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  REG_GCISCR ; 
 int /*<<< orphan*/  REG_GCRBLR ; 
 int /*<<< orphan*/  FUNC2 (struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa3xx_gcu_priv*) ; 
 int FUNC4 (struct pxa3xx_gcu_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa3xx_gcu_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC10(int irq, void *ctx)
{
	struct pxa3xx_gcu_priv *priv = ctx;
	struct pxa3xx_gcu_shared *shared = priv->shared;
	u32 status = FUNC4(priv, REG_GCISCR) & IE_ALL;

	FUNC0("-Interrupt");

	if (!status)
		return IRQ_NONE;

	FUNC7(&priv->spinlock);
	shared->num_interrupts++;

	if (status & IE_EEOB) {
		FUNC0(" [EEOB]");

		FUNC3(priv);
		FUNC9(&priv->wait_free);

		if (priv->ready) {
			FUNC6(priv);
		} else {
			/* There is no more data prepared by the userspace.
			 * Set hw_running = 0 and wait for the next userspace
			 * kick-off */
			shared->num_idle++;
			shared->hw_running = 0;

			FUNC0(" '-> Idle.");

			/* set ring buffer length to zero */
			FUNC5(priv, REG_GCRBLR, 0);

			FUNC9(&priv->wait_idle);
		}

		shared->num_done++;
	} else {
		FUNC1(" [???]");
		FUNC2(priv);
	}

	/* Clear the interrupt */
	FUNC5(priv, REG_GCISCR, status);
	FUNC8(&priv->spinlock);

	return IRQ_HANDLED;
}