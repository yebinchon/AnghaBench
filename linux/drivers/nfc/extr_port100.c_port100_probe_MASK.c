#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct port100 {int /*<<< orphan*/  udev; TYPE_3__* out_urb; TYPE_3__* in_urb; int /*<<< orphan*/  nfc_digital_dev; int /*<<< orphan*/  skb_tailroom; scalar_t__ skb_headroom; int /*<<< orphan*/  cmd_type; int /*<<< orphan*/  cmd_complete_work; int /*<<< orphan*/  cmd_cancel_done; struct usb_interface* interface; int /*<<< orphan*/  out_urb_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT100_CAPABILITIES ; 
 int /*<<< orphan*/  PORT100_CMD_TYPE_0 ; 
 int /*<<< orphan*/  PORT100_CMD_TYPE_1 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PORT100_COMM_RF_HEAD_MAX_LEN ; 
 scalar_t__ PORT100_FRAME_HEADER_LEN ; 
 int /*<<< orphan*/  PORT100_FRAME_TAIL_LEN ; 
 int /*<<< orphan*/  PORT100_PROTOCOLS ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 struct port100* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct port100*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  port100_digital_ops ; 
 int /*<<< orphan*/  FUNC13 (struct port100*) ; 
 int FUNC14 (struct port100*) ; 
 int /*<<< orphan*/ * port100_send_complete ; 
 int FUNC15 (struct port100*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port100_wq_cmd_complete ; 
 void* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC18 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct port100*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_interface*,struct port100*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC26(struct usb_interface *interface,
			 const struct usb_device_id *id)
{
	struct port100 *dev;
	int rc;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	int in_endpoint;
	int out_endpoint;
	u16 fw_version;
	u64 cmd_type_mask;
	int i;

	dev = FUNC2(&interface->dev, sizeof(struct port100), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	FUNC5(&dev->out_urb_lock);
	dev->udev = FUNC21(FUNC4(interface));
	dev->interface = interface;
	FUNC24(interface, dev);

	in_endpoint = out_endpoint = 0;
	iface_desc = interface->cur_altsetting;
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (!in_endpoint && FUNC17(endpoint))
			in_endpoint = endpoint->bEndpointAddress;

		if (!out_endpoint && FUNC18(endpoint))
			out_endpoint = endpoint->bEndpointAddress;
	}

	if (!in_endpoint || !out_endpoint) {
		FUNC11(&interface->dev,
			"Could not find bulk-in or bulk-out endpoint\n");
		rc = -ENODEV;
		goto error;
	}

	dev->in_urb = FUNC16(0, GFP_KERNEL);
	dev->out_urb = FUNC16(0, GFP_KERNEL);

	if (!dev->in_urb || !dev->out_urb) {
		FUNC11(&interface->dev, "Could not allocate USB URBs\n");
		rc = -ENOMEM;
		goto error;
	}

	FUNC19(dev->in_urb, dev->udev,
			  FUNC23(dev->udev, in_endpoint),
			  NULL, 0, NULL, dev);
	FUNC19(dev->out_urb, dev->udev,
			  FUNC25(dev->udev, out_endpoint),
			  NULL, 0, port100_send_complete, dev);
	dev->out_urb->transfer_flags = URB_ZERO_PACKET;

	dev->skb_headroom = PORT100_FRAME_HEADER_LEN +
			    PORT100_COMM_RF_HEAD_MAX_LEN;
	dev->skb_tailroom = PORT100_FRAME_TAIL_LEN;

	FUNC3(&dev->cmd_cancel_done);
	FUNC0(&dev->cmd_complete_work, port100_wq_cmd_complete);

	/* The first thing to do with the Port-100 is to set the command type
	 * to be used. If supported we use command type 1. 0 otherwise.
	 */
	cmd_type_mask = FUNC13(dev);
	if (!cmd_type_mask) {
		FUNC11(&interface->dev,
			"Could not get supported command types\n");
		rc = -ENODEV;
		goto error;
	}

	if (FUNC1(cmd_type_mask, PORT100_CMD_TYPE_1))
		dev->cmd_type = PORT100_CMD_TYPE_1;
	else
		dev->cmd_type = PORT100_CMD_TYPE_0;

	rc = FUNC15(dev, dev->cmd_type);
	if (rc) {
		FUNC11(&interface->dev,
			"The device does not support command type %u\n",
			dev->cmd_type);
		goto error;
	}

	fw_version = FUNC14(dev);
	if (!fw_version)
		FUNC11(&interface->dev,
			"Could not get device firmware version\n");

	FUNC12(&interface->dev,
		 "Sony NFC Port-100 Series attached (firmware v%x.%02x)\n",
		 (fw_version & 0xFF00) >> 8, fw_version & 0xFF);

	dev->nfc_digital_dev = FUNC6(&port100_digital_ops,
							   PORT100_PROTOCOLS,
							   PORT100_CAPABILITIES,
							   dev->skb_headroom,
							   dev->skb_tailroom);
	if (!dev->nfc_digital_dev) {
		FUNC11(&interface->dev,
			"Could not allocate nfc_digital_dev\n");
		rc = -ENOMEM;
		goto error;
	}

	FUNC10(dev->nfc_digital_dev, &interface->dev);
	FUNC9(dev->nfc_digital_dev, dev);

	rc = FUNC8(dev->nfc_digital_dev);
	if (rc) {
		FUNC11(&interface->dev,
			"Could not register digital device\n");
		goto free_nfc_dev;
	}

	return 0;

free_nfc_dev:
	FUNC7(dev->nfc_digital_dev);

error:
	FUNC20(dev->in_urb);
	FUNC20(dev->out_urb);
	FUNC22(dev->udev);

	return rc;
}