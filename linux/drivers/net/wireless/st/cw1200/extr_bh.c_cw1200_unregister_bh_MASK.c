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
struct cw1200_common {int /*<<< orphan*/ * bh_workqueue; int /*<<< orphan*/  bh_wq; int /*<<< orphan*/  bh_term; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cw1200_common *priv)
{
	FUNC0(1, &priv->bh_term);
	FUNC4(&priv->bh_wq);

	FUNC2(priv->bh_workqueue);

	FUNC1(priv->bh_workqueue);
	priv->bh_workqueue = NULL;

	FUNC3("[BH] unregistered.\n");
}