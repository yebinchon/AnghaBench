#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  status; struct nfcmrvl_usb_drv_data* context; } ;
struct sk_buff {int dummy; } ;
struct nfcmrvl_usb_drv_data {TYPE_1__* udev; int /*<<< orphan*/  bulk_anchor; int /*<<< orphan*/  flags; TYPE_2__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  ndev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFCMRVL_NCI_RUNNING ; 
 int /*<<< orphan*/  NFCMRVL_USB_BULK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*) ; 

__attribute__((used)) static void FUNC10(struct urb *urb)
{
	struct nfcmrvl_usb_drv_data *drv_data = urb->context;
	struct sk_buff *skb;
	int err;

	FUNC0(&drv_data->udev->dev, "urb %p status %d count %d\n",
		urb, urb->status, urb->actual_length);

	if (!FUNC5(NFCMRVL_NCI_RUNNING, &drv_data->flags))
		return;

	if (!urb->status) {
		skb = FUNC1(drv_data->priv->ndev, urb->actual_length,
				    GFP_ATOMIC);
		if (!skb) {
			FUNC2(&drv_data->udev->dev, "failed to alloc mem\n");
		} else {
			FUNC4(skb, urb->transfer_buffer,
				     urb->actual_length);
			if (FUNC3(drv_data->priv, skb) < 0)
				FUNC2(&drv_data->udev->dev,
					"corrupted Rx packet\n");
		}
	}

	if (!FUNC5(NFCMRVL_USB_BULK_RUNNING, &drv_data->flags))
		return;

	FUNC6(urb, &drv_data->bulk_anchor);
	FUNC7(drv_data->udev);

	err = FUNC8(urb, GFP_ATOMIC);
	if (err) {
		/* -EPERM: urb is being killed;
		 * -ENODEV: device got disconnected
		 */
		if (err != -EPERM && err != -ENODEV)
			FUNC2(&drv_data->udev->dev,
				"urb %p failed to resubmit (%d)\n", urb, -err);
		FUNC9(urb);
	}
}