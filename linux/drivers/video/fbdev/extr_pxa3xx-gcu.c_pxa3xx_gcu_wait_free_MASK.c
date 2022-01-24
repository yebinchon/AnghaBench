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
struct pxa3xx_gcu_priv {int /*<<< orphan*/  free; int /*<<< orphan*/  wait_free; TYPE_1__* shared; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_wait_free; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  REG_GCRBEXHR ; 
 scalar_t__ FUNC2 (struct pxa3xx_gcu_priv*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct pxa3xx_gcu_priv *priv)
{
	int ret = 0;

	FUNC0("Waiting for free...");

	/* Does not need to be atomic. There's a lock in user space,
	 * but anyhow, this is just for statistics. */
	priv->shared->num_wait_free++;

	while (!priv->free) {
		u32 rbexhr = FUNC2(priv, REG_GCRBEXHR);

		ret = FUNC3(priv->wait_free,
						       priv->free, HZ*4);

		if (ret < 0)
			break;

		if (ret > 0)
			continue;

		if (FUNC2(priv, REG_GCRBEXHR) == rbexhr) {
			FUNC1("TIMEOUT");
			ret = -ETIMEDOUT;
			break;
		}
	}

	FUNC0("done");

	return ret;
}