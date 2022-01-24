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
struct rtl8xxxu_tx_urb {int /*<<< orphan*/  list; } ;
struct rtl8xxxu_priv {scalar_t__ tx_urb_free_count; int tx_stopped; int /*<<< orphan*/  tx_urb_lock; int /*<<< orphan*/  hw; int /*<<< orphan*/  tx_urb_free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RTL8XXXU_TX_URB_HIGH_WATER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct rtl8xxxu_priv *priv,
				 struct rtl8xxxu_tx_urb *tx_urb)
{
	unsigned long flags;

	FUNC0(&tx_urb->list);

	FUNC3(&priv->tx_urb_lock, flags);

	FUNC2(&tx_urb->list, &priv->tx_urb_free_list);
	priv->tx_urb_free_count++;
	if (priv->tx_urb_free_count > RTL8XXXU_TX_URB_HIGH_WATER &&
	    priv->tx_stopped) {
		priv->tx_stopped = false;
		FUNC1(priv->hw);
	}

	FUNC4(&priv->tx_urb_lock, flags);
}