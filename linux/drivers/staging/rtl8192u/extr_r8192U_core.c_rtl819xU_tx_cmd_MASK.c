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
typedef  size_t u8 ;
struct urb {int dummy; } ;
struct tx_desc_cmd_819x_usb {int FirstSeg; int LastSeg; int OWN; int /*<<< orphan*/  LINIP; int /*<<< orphan*/  TxBufferSize; int /*<<< orphan*/  CmdInit; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; scalar_t__ cb; } ;
struct r8192_priv {int /*<<< orphan*/  udev; int /*<<< orphan*/ * tx_pending; } ;
struct net_device {int dummy; } ;
struct cb_desc {size_t queue_index; int /*<<< orphan*/  bLastIniPkt; int /*<<< orphan*/  txbuf_size; int /*<<< orphan*/  bCmdOrInit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 short ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_DEV_ADDR_SIZE ; 
 int /*<<< orphan*/  USB_HWDESC_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct r8192_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct tx_desc_cmd_819x_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtl8192_tx_isr ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 

short FUNC9(struct net_device *dev, struct sk_buff *skb)
{
	struct r8192_priv *priv = FUNC3(dev);
	int			status;
	struct urb		*tx_urb;
	unsigned int		idx_pipe;
	struct tx_desc_cmd_819x_usb *pdesc = (struct tx_desc_cmd_819x_usb *)skb->data;
	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
	u8 queue_index = tcb_desc->queue_index;

	FUNC1(&priv->tx_pending[queue_index]);
	tx_urb = FUNC5(0, GFP_ATOMIC);
	if (!tx_urb) {
		FUNC2(skb);
		return -ENOMEM;
	}

	FUNC4(pdesc, 0, USB_HWDESC_HEADER_LEN);
	/* Tx descriptor ought to be set according to the skb->cb */
	pdesc->FirstSeg = 1;
	pdesc->LastSeg = 1;
	pdesc->CmdInit = tcb_desc->bCmdOrInit;
	pdesc->TxBufferSize = tcb_desc->txbuf_size;
	pdesc->OWN = 1;
	pdesc->LINIP = tcb_desc->bLastIniPkt;

	/*---------------------------------------------------------------------
	 * Fill up USB_OUT_CONTEXT.
	 *---------------------------------------------------------------------
	 */
	idx_pipe = 0x04;
	FUNC6(tx_urb, priv->udev,
			  FUNC7(priv->udev, idx_pipe),
			  skb->data, skb->len, rtl8192_tx_isr, skb);

	status = FUNC8(tx_urb, GFP_ATOMIC);

	if (!status)
		return 0;

	FUNC0("Error TX CMD URB, error %d", status);
	return -1;
}