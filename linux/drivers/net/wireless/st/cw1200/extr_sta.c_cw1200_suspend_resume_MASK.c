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
struct wsm_suspend_resume {scalar_t__ stop; int /*<<< orphan*/  link_id; scalar_t__ multicast; } ;
struct cw1200_common {int tx_multicast; int join_dtim_period; int beacon_int; int /*<<< orphan*/  ps_state_lock; int /*<<< orphan*/  mcast_timeout; scalar_t__ buffered_multicasts; scalar_t__ aid0_bit_set; int /*<<< orphan*/  pm_state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cw1200_common*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct cw1200_common *priv,
			  struct wsm_suspend_resume *arg)
{
	FUNC4("[AP] %s: %s\n",
		 arg->stop ? "stop" : "start",
		 arg->multicast ? "broadcast" : "unicast");

	if (arg->multicast) {
		bool cancel_tmo = false;
		FUNC5(&priv->ps_state_lock);
		if (arg->stop) {
			priv->tx_multicast = false;
		} else {
			/* Firmware sends this indication every DTIM if there
			 * is a STA in powersave connected. There is no reason
			 * to suspend, following wakeup will consume much more
			 * power than it could be saved.
			 */
			FUNC1(&priv->pm_state,
					     priv->join_dtim_period *
					     (priv->beacon_int + 20) * HZ / 1024);
			priv->tx_multicast = (priv->aid0_bit_set &&
					      priv->buffered_multicasts);
			if (priv->tx_multicast) {
				cancel_tmo = true;
				FUNC0(priv);
			}
		}
		FUNC6(&priv->ps_state_lock);
		if (cancel_tmo)
			FUNC3(&priv->mcast_timeout);
	} else {
		FUNC5(&priv->ps_state_lock);
		FUNC2(priv, arg->link_id, arg->stop);
		FUNC6(&priv->ps_state_lock);
		if (!arg->stop)
			FUNC0(priv);
	}
	return;
}