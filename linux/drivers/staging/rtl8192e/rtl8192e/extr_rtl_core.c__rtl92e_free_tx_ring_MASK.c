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
struct rtl8192_tx_ring {size_t idx; int entries; struct tx_desc* desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  queue; } ;
struct r8192_priv {int /*<<< orphan*/  pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct r8192_priv* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, unsigned int prio)
{
	struct r8192_priv *priv = FUNC4(dev);
	struct rtl8192_tx_ring *ring = &priv->tx_ring[prio];

	while (FUNC5(&ring->queue)) {
		struct tx_desc *entry = &ring->desc[ring->idx];
		struct sk_buff *skb = FUNC0(&ring->queue);

		FUNC3(priv->pdev, entry->TxBuffAddr,
			skb->len, PCI_DMA_TODEVICE);
		FUNC1(skb);
		ring->idx = (ring->idx + 1) % ring->entries;
	}

	FUNC2(priv->pdev, sizeof(*ring->desc) * ring->entries,
	ring->desc, ring->dma);
	ring->desc = NULL;
}