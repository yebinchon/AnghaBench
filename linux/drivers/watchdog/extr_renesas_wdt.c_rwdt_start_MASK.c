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
typedef  int u8 ;
struct watchdog_device {int /*<<< orphan*/  parent; } ;
struct rwdt_priv {int cks; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ RWTCSRA ; 
 int RWTCSRA_TME ; 
 int RWTCSRA_WRFLG ; 
 scalar_t__ RWTCSRB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rwdt_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rwdt_priv*,int,scalar_t__) ; 
 struct rwdt_priv* FUNC6 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdev)
{
	struct rwdt_priv *priv = FUNC6(wdev);
	u8 val;

	FUNC1(wdev->parent);

	/* Stop the timer before we modify any register */
	val = FUNC2(priv->base + RWTCSRA) & ~RWTCSRA_TME;
	FUNC5(priv, val, RWTCSRA);
	/* Delay 2 cycles before setting watchdog counter */
	FUNC4(priv, 2);

	FUNC3(wdev);
	FUNC5(priv, priv->cks, RWTCSRA);
	FUNC5(priv, 0, RWTCSRB);

	while (FUNC2(priv->base + RWTCSRA) & RWTCSRA_WRFLG)
		FUNC0();

	FUNC5(priv, priv->cks | RWTCSRA_TME, RWTCSRA);

	return 0;
}