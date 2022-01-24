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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ context; } ;
struct rtl8xxxu_rx_urb {TYPE_1__ urb; int /*<<< orphan*/  list; } ;
struct rtl8xxxu_priv {int rx_urb_pending_count; int /*<<< orphan*/  rx_urb_wq; int /*<<< orphan*/  rx_urb_lock; int /*<<< orphan*/  rx_urb_pending_list; int /*<<< orphan*/  shutdown; } ;

/* Variables and functions */
 int RTL8XXXU_RX_URB_PENDING_WATER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct rtl8xxxu_priv *priv,
				  struct rtl8xxxu_rx_urb *rx_urb)
{
	struct sk_buff *skb;
	unsigned long flags;
	int pending = 0;

	FUNC3(&priv->rx_urb_lock, flags);

	if (!priv->shutdown) {
		FUNC1(&rx_urb->list, &priv->rx_urb_pending_list);
		priv->rx_urb_pending_count++;
		pending = priv->rx_urb_pending_count;
	} else {
		skb = (struct sk_buff *)rx_urb->urb.context;
		FUNC0(skb);
		FUNC5(&rx_urb->urb);
	}

	FUNC4(&priv->rx_urb_lock, flags);

	if (pending > RTL8XXXU_RX_URB_PENDING_WATER)
		FUNC2(&priv->rx_urb_wq);
}