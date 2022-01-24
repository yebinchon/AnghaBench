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
struct sk_buff {scalar_t__ cb; struct net_device* dev; } ;
struct rx_desc {int OWN; int EOR; int /*<<< orphan*/  Length; int /*<<< orphan*/  BufferAddress; } ;
struct r8192_priv {int rxringcount; int /*<<< orphan*/  rxbuffersize; int /*<<< orphan*/  pdev; struct sk_buff*** rx_buf; struct rx_desc** rx_ring; scalar_t__* rx_idx; int /*<<< orphan*/ * rx_ring_dma; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 short ENOMEM ; 
 int MAX_RX_QUEUE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rx_desc* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct r8192_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static short FUNC8(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC6(dev);
	struct rx_desc *entry = NULL;
	int i, rx_queue_idx;

	for (rx_queue_idx = 0; rx_queue_idx < MAX_RX_QUEUE; rx_queue_idx++) {
		priv->rx_ring[rx_queue_idx] = FUNC5(priv->pdev,
					      sizeof(*priv->rx_ring[rx_queue_idx]) * priv->rxringcount,
					      &priv->rx_ring_dma[rx_queue_idx]);
		if (!priv->rx_ring[rx_queue_idx] ||
		    (unsigned long)priv->rx_ring[rx_queue_idx] & 0xFF) {
			FUNC2(dev, "Cannot allocate RX ring\n");
			return -ENOMEM;
		}

		priv->rx_idx[rx_queue_idx] = 0;

		for (i = 0; i < priv->rxringcount; i++) {
			struct sk_buff *skb = FUNC0(priv->rxbuffersize);
			dma_addr_t *mapping;

			entry = &priv->rx_ring[rx_queue_idx][i];
			if (!skb)
				return 0;
			skb->dev = dev;
			priv->rx_buf[rx_queue_idx][i] = skb;
			mapping = (dma_addr_t *)skb->cb;
			*mapping = FUNC4(priv->pdev,
						  FUNC7(skb),
						  priv->rxbuffersize,
						  PCI_DMA_FROMDEVICE);
			if (FUNC3(priv->pdev, *mapping)) {
				FUNC1(skb);
				return -1;
			}
			entry->BufferAddress = *mapping;

			entry->Length = priv->rxbuffersize;
			entry->OWN = 1;
		}

		if (entry)
			entry->EOR = 1;
	}
	return 0;
}