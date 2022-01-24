#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct urb {int dummy; } ;
struct sk_buff {int dummy; } ;
struct r8192_priv {TYPE_1__** rx_urb; int /*<<< orphan*/ * pp_rxskb; void* oldaddr; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int transfer_buffer_length; void* transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 short ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_RX_URB ; 
 int RX_URB_SIZE ; 
 int i ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static short FUNC9(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC1(dev);

	priv->rx_urb = FUNC5(MAX_RX_URB + 1, sizeof(struct urb *),
				     GFP_KERNEL);
	if (!priv->rx_urb)
		return -ENOMEM;

#ifndef JACKSON_NEW_RX
	for (i = 0; i < (MAX_RX_URB + 1); i++) {
		priv->rx_urb[i] = FUNC8(0, GFP_KERNEL);
		if (!priv->rx_urb[i])
			return -ENOMEM;

		priv->rx_urb[i]->transfer_buffer =
			FUNC4(RX_URB_SIZE, GFP_KERNEL);
		if (!priv->rx_urb[i]->transfer_buffer)
			return -ENOMEM;

		priv->rx_urb[i]->transfer_buffer_length = RX_URB_SIZE;
	}
#endif

#ifdef THOMAS_BEACON
	{
		long align = 0;
		void *oldaddr, *newaddr;

		priv->rx_urb[16] = usb_alloc_urb(0, GFP_KERNEL);
		priv->oldaddr = kmalloc(16, GFP_KERNEL);
		if (!priv->oldaddr)
			return -ENOMEM;
		oldaddr = priv->oldaddr;
		align = ((long)oldaddr) & 3;
		if (align) {
			newaddr = oldaddr + 4 - align;
			priv->rx_urb[16]->transfer_buffer_length = 16 - 4 + align;
		} else {
			newaddr = oldaddr;
			priv->rx_urb[16]->transfer_buffer_length = 16;
		}
		priv->rx_urb[16]->transfer_buffer = newaddr;
	}
#endif

	FUNC6(priv->rx_urb, 0, sizeof(struct urb *) * MAX_RX_URB);
	priv->pp_rxskb = FUNC2(MAX_RX_URB, sizeof(struct sk_buff *),
				 GFP_KERNEL);
	if (!priv->pp_rxskb) {
		FUNC3(priv->rx_urb);

		priv->pp_rxskb = NULL;
		priv->rx_urb = NULL;

		FUNC0("Endpoint Alloc Failure");
		return -ENOMEM;
	}

	FUNC7(dev, "End of initendpoints\n");
	return 0;
}