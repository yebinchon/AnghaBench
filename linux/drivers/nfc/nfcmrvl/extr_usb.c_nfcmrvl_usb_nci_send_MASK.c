#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  setup_packet; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nfcmrvl_usb_drv_data {TYPE_2__* udev; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  waker; int /*<<< orphan*/  deferred; TYPE_1__* bulk_tx_ep; } ;
struct nfcmrvl_private {struct nfcmrvl_usb_drv_data* drv_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct urb*,int) ; 
 int FUNC2 (struct nfcmrvl_usb_drv_data*) ; 
 int /*<<< orphan*/  nfcmrvl_tx_complete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,TYPE_2__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 unsigned int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 

__attribute__((used)) static int FUNC12(struct nfcmrvl_private *priv,
				struct sk_buff *skb)
{
	struct nfcmrvl_usb_drv_data *drv_data = priv->drv_data;
	struct urb *urb;
	unsigned int pipe;
	int err;

	if (!drv_data->bulk_tx_ep)
		return -ENODEV;

	urb = FUNC4(0, GFP_ATOMIC);
	if (!urb)
		return -ENOMEM;

	pipe = FUNC9(drv_data->udev,
				drv_data->bulk_tx_ep->bEndpointAddress);

	FUNC6(urb, drv_data->udev, pipe, skb->data, skb->len,
			  nfcmrvl_tx_complete, skb);

	err = FUNC2(drv_data);
	if (err) {
		FUNC5(urb, &drv_data->deferred);
		FUNC3(&drv_data->waker);
		err = 0;
		goto done;
	}

	FUNC5(urb, &drv_data->tx_anchor);

	err = FUNC10(urb, GFP_ATOMIC);
	if (err) {
		if (err != -EPERM && err != -ENODEV)
			FUNC1(&drv_data->udev->dev,
				"urb %p submission failed (%d)\n", urb, -err);
		FUNC0(urb->setup_packet);
		FUNC11(urb);
	} else {
		FUNC8(drv_data->udev);
	}

done:
	FUNC7(urb);
	return err;
}