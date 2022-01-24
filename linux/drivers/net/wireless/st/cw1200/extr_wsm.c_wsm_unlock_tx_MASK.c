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
struct cw1200_common {int /*<<< orphan*/  bh_error; int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct cw1200_common *priv)
{
	int tx_lock;
	tx_lock = FUNC1(1, &priv->tx_lock);
	FUNC0(tx_lock < 0);

	if (tx_lock == 0) {
		if (!priv->bh_error)
			FUNC2(priv);
		FUNC3("[WSM] TX is unlocked.\n");
	}
}