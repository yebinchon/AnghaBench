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
struct tx_desc {int /*<<< orphan*/  TxBuffAddr; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rx_desc {int OWN; } ;
struct rtl8192_tx_ring {size_t idx; int entries; int /*<<< orphan*/  queue; struct tx_desc* desc; } ;
struct r8192_priv {int rxringcount; int /*<<< orphan*/  irq_th_lock; int /*<<< orphan*/  pdev; struct rtl8192_tx_ring* tx_ring; scalar_t__* rx_idx; struct rx_desc** rx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int MAX_RX_QUEUE ; 
 int MAX_TX_QUEUE_COUNT ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC3(dev);
	int i, rx_queue_idx;
	unsigned long flags = 0;

	for (rx_queue_idx = 0; rx_queue_idx < MAX_RX_QUEUE; rx_queue_idx++) {
		if (priv->rx_ring[rx_queue_idx]) {
			struct rx_desc *entry = NULL;

			for (i = 0; i < priv->rxringcount; i++) {
				entry = &priv->rx_ring[rx_queue_idx][i];
				entry->OWN = 1;
			}
			priv->rx_idx[rx_queue_idx] = 0;
		}
	}

	FUNC5(&priv->irq_th_lock, flags);
	for (i = 0; i < MAX_TX_QUEUE_COUNT; i++) {
		if (priv->tx_ring[i].desc) {
			struct rtl8192_tx_ring *ring = &priv->tx_ring[i];

			while (FUNC4(&ring->queue)) {
				struct tx_desc *entry = &ring->desc[ring->idx];
				struct sk_buff *skb =
						 FUNC0(&ring->queue);

				FUNC2(priv->pdev,
						 entry->TxBuffAddr,
						 skb->len, PCI_DMA_TODEVICE);
				FUNC1(skb);
				ring->idx = (ring->idx + 1) % ring->entries;
			}
			ring->idx = 0;
		}
	}
	FUNC6(&priv->irq_th_lock, flags);
}