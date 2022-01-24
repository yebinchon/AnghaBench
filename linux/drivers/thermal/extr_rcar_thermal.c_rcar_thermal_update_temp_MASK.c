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
struct rcar_thermal_priv {int ctemp; int /*<<< orphan*/  lock; int /*<<< orphan*/  id; TYPE_1__* chip; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_filonoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCTL ; 
 int CTEMP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FILONOFF ; 
 int /*<<< orphan*/  INTCTRL ; 
 int /*<<< orphan*/  POSNEG ; 
 int /*<<< orphan*/  THSCR ; 
 int /*<<< orphan*/  THSSR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct rcar_thermal_priv*) ; 
 struct device* FUNC5 (struct rcar_thermal_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct rcar_thermal_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rcar_thermal_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rcar_thermal_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct rcar_thermal_priv *priv)
{
	struct device *dev = FUNC5(priv);
	int i;
	u32 ctemp, old, new;
	int ret = -EINVAL;

	FUNC2(&priv->lock);

	/*
	 * TSC decides a value of CPTAP automatically,
	 * and this is the conditions which validate interrupt.
	 */
	FUNC6(priv, THSCR, CPCTL, CPCTL);

	ctemp = 0;
	old = ~0;
	for (i = 0; i < 128; i++) {
		/*
		 * we need to wait 300us after changing comparator offset
		 * to get stable temperature.
		 * see "Usage Notes" on datasheet
		 */
		FUNC9(300);

		new = FUNC7(priv, THSSR) & CTEMP;
		if (new == old) {
			ctemp = new;
			break;
		}
		old = new;
	}

	if (!ctemp) {
		FUNC1(dev, "thermal sensor was broken\n");
		goto err_out_unlock;
	}

	/*
	 * enable IRQ
	 */
	if (FUNC4(priv)) {
		if (priv->chip->has_filonoff)
			FUNC8(priv, FILONOFF, 0);

		/* enable Rising/Falling edge interrupt */
		FUNC8(priv, POSNEG,  0x1);
		FUNC8(priv, INTCTRL, (((ctemp - 0) << 8) |
						   ((ctemp - 1) << 0)));
	}

	FUNC0(dev, "thermal%d  %d -> %d\n", priv->id, priv->ctemp, ctemp);

	priv->ctemp = ctemp;
	ret = 0;
err_out_unlock:
	FUNC3(&priv->lock);
	return ret;
}