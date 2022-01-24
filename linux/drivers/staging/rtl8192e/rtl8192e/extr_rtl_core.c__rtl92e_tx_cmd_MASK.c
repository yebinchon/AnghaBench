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
struct tx_desc_cmd {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct rtl8192_tx_ring {unsigned int idx; unsigned int entries; int /*<<< orphan*/  queue; int /*<<< orphan*/ * desc; } ;
struct r8192_priv {int /*<<< orphan*/  irq_th_lock; TYPE_1__* ops; struct rtl8192_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;
struct cb_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tx_fill_cmd_descriptor ) (struct net_device*,struct tx_desc_cmd*,struct cb_desc*,struct sk_buff*) ;} ;

/* Variables and functions */
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 size_t TXCMD_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct tx_desc_cmd*,struct cb_desc*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, struct sk_buff *skb)
{
	struct r8192_priv *priv = FUNC1(dev);
	struct rtl8192_tx_ring *ring;
	struct tx_desc_cmd *entry;
	unsigned int idx;
	struct cb_desc *tcb_desc;
	unsigned long flags;

	FUNC3(&priv->irq_th_lock, flags);
	ring = &priv->tx_ring[TXCMD_QUEUE];

	idx = (ring->idx + FUNC2(&ring->queue)) % ring->entries;
	entry = (struct tx_desc_cmd *)&ring->desc[idx];

	tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);

	priv->ops->tx_fill_cmd_descriptor(dev, entry, tcb_desc, skb);

	FUNC0(&ring->queue, skb);
	FUNC4(&priv->irq_th_lock, flags);
}