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
typedef  scalar_t__ u32 ;
struct pxa3xx_gcu_priv {TYPE_1__* shared; int /*<<< orphan*/  wait_idle; } ;
struct TYPE_2__ {int num_interrupts; scalar_t__ hw_running; int /*<<< orphan*/  num_wait_idle; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  REG_GCRBEXHR ; 
 scalar_t__ FUNC2 (struct pxa3xx_gcu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC4(struct pxa3xx_gcu_priv *priv)
{
	int ret = 0;

	FUNC0("Waiting for idle...");

	/* Does not need to be atomic. There's a lock in user space,
	 * but anyhow, this is just for statistics. */
	priv->shared->num_wait_idle++;

	while (priv->shared->hw_running) {
		int num = priv->shared->num_interrupts;
		u32 rbexhr = FUNC2(priv, REG_GCRBEXHR);

		ret = FUNC3(priv->wait_idle,
					!priv->shared->hw_running, HZ*4);

		if (ret != 0)
			break;

		if (FUNC2(priv, REG_GCRBEXHR) == rbexhr &&
		    priv->shared->num_interrupts == num) {
			FUNC1("TIMEOUT");
			ret = -ETIMEDOUT;
			break;
		}
	}

	FUNC0("done");

	return ret;
}