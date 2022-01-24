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
struct cw1200_common {int /*<<< orphan*/  bh_wq; int /*<<< orphan*/  bh_rx; scalar_t__ bh_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cw1200_common *priv)
{
	FUNC2("[BH] irq.\n");

	/* Disable Interrupts! */
	/* NOTE:  hwbus_ops->lock already held */
	FUNC0(priv, 0);

	if (/* WARN_ON */(priv->bh_error))
		return;

	if (FUNC1(1, &priv->bh_rx) == 1)
		FUNC3(&priv->bh_wq);
}