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
struct tx_desc {int /*<<< orphan*/  TxBuffAddr; scalar_t__ OWN; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rtl8192_tx_ring {size_t idx; int entries; int /*<<< orphan*/  queue; struct tx_desc* desc; } ;
struct r8192_priv {int /*<<< orphan*/  irq_tx_tasklet; int /*<<< orphan*/  pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int BEACON_QUEUE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, int prio)
{
	struct r8192_priv *priv = FUNC3(dev);

	struct rtl8192_tx_ring *ring = &priv->tx_ring[prio];

	while (FUNC4(&ring->queue)) {
		struct tx_desc *entry = &ring->desc[ring->idx];
		struct sk_buff *skb;

		if (prio != BEACON_QUEUE) {
			if (entry->OWN)
				return;
			ring->idx = (ring->idx + 1) % ring->entries;
		}

		skb = FUNC0(&ring->queue);
		FUNC2(priv->pdev, entry->TxBuffAddr,
		skb->len, PCI_DMA_TODEVICE);

		FUNC1(skb);
	}
	if (prio != BEACON_QUEUE)
		FUNC5(&priv->irq_tx_tasklet);
}