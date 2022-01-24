#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct nfcmrvl_usb_drv_data {struct nfcmrvl_private* priv; int /*<<< orphan*/  deferred; int /*<<< orphan*/  bulk_anchor; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  txlock; int /*<<< orphan*/  waker; struct usb_interface* intf; struct usb_device* udev; struct usb_endpoint_descriptor* bulk_rx_ep; struct usb_endpoint_descriptor* bulk_tx_ep; } ;
struct nfcmrvl_private {int support_fw_dnld; } ;
struct nfcmrvl_platform_data {int /*<<< orphan*/  reset_n_io; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_6__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nfcmrvl_private*) ; 
 int /*<<< orphan*/  NFCMRVL_PHY_USB ; 
 int FUNC2 (struct nfcmrvl_private*) ; 
 struct nfcmrvl_usb_drv_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfcmrvl_platform_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,struct usb_interface*,struct usb_device_id const*) ; 
 struct nfcmrvl_private* FUNC8 (int /*<<< orphan*/ ,struct nfcmrvl_usb_drv_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nfcmrvl_platform_data*) ; 
 int /*<<< orphan*/  nfcmrvl_waker ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC11 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  usb_ops ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,struct nfcmrvl_usb_drv_data*) ; 

__attribute__((used)) static int FUNC13(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct usb_endpoint_descriptor *ep_desc;
	struct nfcmrvl_usb_drv_data *drv_data;
	struct nfcmrvl_private *priv;
	int i;
	struct usb_device *udev = FUNC5(intf);
	struct nfcmrvl_platform_data config;

	/* No configuration for USB */
	FUNC6(&config, 0, sizeof(config));
	config.reset_n_io = -EINVAL;

	FUNC7(&udev->dev, "intf %p id %p\n", intf, id);

	drv_data = FUNC3(&intf->dev, sizeof(*drv_data), GFP_KERNEL);
	if (!drv_data)
		return -ENOMEM;

	for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
		ep_desc = &intf->cur_altsetting->endpoint[i].desc;

		if (!drv_data->bulk_tx_ep &&
		    FUNC11(ep_desc)) {
			drv_data->bulk_tx_ep = ep_desc;
			continue;
		}

		if (!drv_data->bulk_rx_ep &&
		    FUNC10(ep_desc)) {
			drv_data->bulk_rx_ep = ep_desc;
			continue;
		}
	}

	if (!drv_data->bulk_tx_ep || !drv_data->bulk_rx_ep)
		return -ENODEV;

	drv_data->udev = udev;
	drv_data->intf = intf;

	FUNC0(&drv_data->waker, nfcmrvl_waker);
	FUNC9(&drv_data->txlock);

	FUNC4(&drv_data->tx_anchor);
	FUNC4(&drv_data->bulk_anchor);
	FUNC4(&drv_data->deferred);

	priv = FUNC8(NFCMRVL_PHY_USB, drv_data, &usb_ops,
					&intf->dev, &config);
	if (FUNC1(priv))
		return FUNC2(priv);

	drv_data->priv = priv;
	drv_data->priv->support_fw_dnld = false;

	FUNC12(intf, drv_data);

	return 0;
}