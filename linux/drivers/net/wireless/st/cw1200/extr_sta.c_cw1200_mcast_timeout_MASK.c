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
struct timer_list {int dummy; } ;
struct cw1200_common {int tx_multicast; int /*<<< orphan*/  ps_state_lock; scalar_t__ buffered_multicasts; scalar_t__ aid0_bit_set; TYPE_1__* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 struct cw1200_common* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcast_timeout ; 
 struct cw1200_common* priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(struct timer_list *t)
{
	struct cw1200_common *priv = FUNC1(priv, t, mcast_timeout);

	FUNC4(priv->hw->wiphy,
		   "Multicast delivery timeout.\n");
	FUNC2(&priv->ps_state_lock);
	priv->tx_multicast = priv->aid0_bit_set &&
			priv->buffered_multicasts;
	if (priv->tx_multicast)
		FUNC0(priv);
	FUNC3(&priv->ps_state_lock);
}