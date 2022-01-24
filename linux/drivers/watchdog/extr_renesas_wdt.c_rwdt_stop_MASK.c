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
struct watchdog_device {int /*<<< orphan*/  parent; } ;
struct rwdt_priv {int /*<<< orphan*/  cks; } ;

/* Variables and functions */
 int /*<<< orphan*/  RWTCSRA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rwdt_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rwdt_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rwdt_priv* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdev)
{
	struct rwdt_priv *priv = FUNC3(wdev);

	FUNC2(priv, priv->cks, RWTCSRA);
	/* Delay 3 cycles before disabling module clock */
	FUNC1(priv, 3);
	FUNC0(wdev->parent);

	return 0;
}