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
struct cw1200_common {int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 scalar_t__ FUNC4 (struct cw1200_common*) ; 

void FUNC5(struct cw1200_common *priv)
{
	FUNC2(priv);
	if (FUNC0(1, &priv->tx_lock) == 1) {
		if (FUNC4(priv))
			FUNC1("[WSM] TX is locked.\n");
	}
	FUNC3(priv);
}