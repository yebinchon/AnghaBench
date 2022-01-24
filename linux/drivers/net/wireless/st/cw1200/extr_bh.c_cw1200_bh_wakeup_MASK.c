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
struct cw1200_common {int /*<<< orphan*/  bh_wq; int /*<<< orphan*/  bh_tx; scalar_t__ bh_error; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cw1200_common *priv)
{
	FUNC1("[BH] wakeup.\n");
	if (priv->bh_error) {
		FUNC2("[BH] wakeup failed (BH error)\n");
		return;
	}

	if (FUNC0(1, &priv->bh_tx) == 1)
		FUNC3(&priv->bh_wq);
}