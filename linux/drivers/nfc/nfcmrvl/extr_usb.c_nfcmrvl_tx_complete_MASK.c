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
struct urb {int /*<<< orphan*/  setup_packet; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  status; struct sk_buff* context; } ;
struct sk_buff {scalar_t__ dev; } ;
struct nfcmrvl_usb_drv_data {int /*<<< orphan*/  txlock; int /*<<< orphan*/  tx_in_flight; } ;
struct nfcmrvl_private {int /*<<< orphan*/  dev; struct nfcmrvl_usb_drv_data* drv_data; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct nfcmrvl_private* FUNC2 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct urb *urb)
{
	struct sk_buff *skb = urb->context;
	struct nci_dev *ndev = (struct nci_dev *)skb->dev;
	struct nfcmrvl_private *priv = FUNC2(ndev);
	struct nfcmrvl_usb_drv_data *drv_data = priv->drv_data;
	unsigned long flags;

	FUNC3(priv->dev, "urb %p status %d count %d\n",
		 urb, urb->status, urb->actual_length);

	FUNC4(&drv_data->txlock, flags);
	drv_data->tx_in_flight--;
	FUNC5(&drv_data->txlock, flags);

	FUNC0(urb->setup_packet);
	FUNC1(skb);
}