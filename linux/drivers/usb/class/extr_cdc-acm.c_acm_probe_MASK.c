#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {int bInterval; int /*<<< orphan*/  dev; int /*<<< orphan*/  bEndpointAddress; TYPE_5__* cur_altsetting; TYPE_1__* altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; int /*<<< orphan*/  dev; int /*<<< orphan*/  bEndpointAddress; TYPE_5__* cur_altsetting; TYPE_1__* altsetting; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;
struct usb_cdc_union_desc {int bSlaveInterface0; int bMasterInterface0; } ;
struct usb_cdc_parsed_header {struct usb_cdc_country_functional_desc* usb_cdc_country_functional_desc; TYPE_4__* usb_cdc_acm_descriptor; struct usb_cdc_call_mgmt_descriptor* usb_cdc_call_mgmt_descriptor; struct usb_cdc_union_desc* usb_cdc_union_desc; } ;
struct usb_cdc_country_functional_desc {int /*<<< orphan*/  iCountryCodeRelDate; scalar_t__ bLength; int /*<<< orphan*/  wCountyCode0; } ;
struct usb_cdc_call_mgmt_descriptor {int bDataInterface; } ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct device {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_16__ {int bDataBits; int /*<<< orphan*/  dwDTERate; } ;
struct acm_wb {int combined_interfaces; int writesize; int minor; int ctrlsize; int readsize; int rx_buflimit; int bInterval; unsigned long quirks; int index; TYPE_6__ port; int /*<<< orphan*/  ctrl_dma; int /*<<< orphan*/ * ctrl_buffer; struct urb* ctrlurb; struct urb** read_urbs; struct urb* urb; struct acm_wb* wb; struct usb_interface* control; int /*<<< orphan*/ * country_codes; int /*<<< orphan*/  out; int /*<<< orphan*/  in; TYPE_9__ line; scalar_t__ nb_size; scalar_t__ nb_index; int /*<<< orphan*/ * notification_buffer; scalar_t__ country_code_size; int /*<<< orphan*/  country_rel_date; struct acm_wb* instance; int /*<<< orphan*/  read_urbs_free; int /*<<< orphan*/ * base; struct usb_device* dev; int /*<<< orphan*/  dma; struct acm_wb* read_buffers; int /*<<< orphan*/  delayed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  wioctl; int /*<<< orphan*/  work; int /*<<< orphan*/  ctrl_caps; struct usb_interface* data; } ;
struct acm_rb {int combined_interfaces; int writesize; int minor; int ctrlsize; int readsize; int rx_buflimit; int bInterval; unsigned long quirks; int index; TYPE_6__ port; int /*<<< orphan*/  ctrl_dma; int /*<<< orphan*/ * ctrl_buffer; struct urb* ctrlurb; struct urb** read_urbs; struct urb* urb; struct acm_rb* wb; struct usb_interface* control; int /*<<< orphan*/ * country_codes; int /*<<< orphan*/  out; int /*<<< orphan*/  in; TYPE_9__ line; scalar_t__ nb_size; scalar_t__ nb_index; int /*<<< orphan*/ * notification_buffer; scalar_t__ country_code_size; int /*<<< orphan*/  country_rel_date; struct acm_rb* instance; int /*<<< orphan*/  read_urbs_free; int /*<<< orphan*/ * base; struct usb_device* dev; int /*<<< orphan*/  dma; struct acm_rb* read_buffers; int /*<<< orphan*/  delayed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  wioctl; int /*<<< orphan*/  work; int /*<<< orphan*/  ctrl_caps; struct usb_interface* data; } ;
struct acm {int combined_interfaces; int writesize; int minor; int ctrlsize; int readsize; int rx_buflimit; int bInterval; unsigned long quirks; int index; TYPE_6__ port; int /*<<< orphan*/  ctrl_dma; int /*<<< orphan*/ * ctrl_buffer; struct urb* ctrlurb; struct urb** read_urbs; struct urb* urb; struct acm* wb; struct usb_interface* control; int /*<<< orphan*/ * country_codes; int /*<<< orphan*/  out; int /*<<< orphan*/  in; TYPE_9__ line; scalar_t__ nb_size; scalar_t__ nb_index; int /*<<< orphan*/ * notification_buffer; scalar_t__ country_code_size; int /*<<< orphan*/  country_rel_date; struct acm* instance; int /*<<< orphan*/  read_urbs_free; int /*<<< orphan*/ * base; struct usb_device* dev; int /*<<< orphan*/  dma; struct acm* read_buffers; int /*<<< orphan*/  delayed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  read_lock; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  wioctl; int /*<<< orphan*/  work; int /*<<< orphan*/  ctrl_caps; struct usb_interface* data; } ;
struct TYPE_11__ {int bNumEndpoints; scalar_t__ bInterfaceClass; } ;
struct TYPE_14__ {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct TYPE_13__ {int /*<<< orphan*/  bmCapabilities; } ;
struct TYPE_12__ {int extralen; unsigned char* extra; struct usb_interface desc; } ;
struct TYPE_10__ {unsigned char* extra; int extralen; } ;

/* Variables and functions */
 int ACM_NR ; 
 int ACM_NW ; 
 scalar_t__ CDC_DATA_INTERFACE_TYPE ; 
 unsigned long CLEAR_HALT_CONDITIONS ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IGNORE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 unsigned long NO_CAP_LINE ; 
 unsigned long NO_DATA_INTERFACE ; 
 unsigned long NO_UNION_NORMAL ; 
 int FUNC2 (struct device*) ; 
 unsigned long SEND_ZERO_PACKET ; 
 unsigned long SINGLE_RX_URB ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  URB_ZERO_PACKET ; 
 int /*<<< orphan*/  USB_CDC_CAP_LINE ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct acm_wb*) ; 
 int /*<<< orphan*/  acm_ctrl_irq ; 
 int /*<<< orphan*/  acm_driver ; 
 int /*<<< orphan*/  acm_port_ops ; 
 int /*<<< orphan*/  FUNC5 (struct acm_wb*) ; 
 int /*<<< orphan*/  acm_read_bulk_callback ; 
 int /*<<< orphan*/  FUNC6 (struct acm_wb*,TYPE_9__*) ; 
 int /*<<< orphan*/  acm_softint ; 
 int /*<<< orphan*/  acm_tty_driver ; 
 scalar_t__ FUNC7 (struct acm_wb*) ; 
 int /*<<< orphan*/  FUNC8 (struct acm_wb*) ; 
 int /*<<< orphan*/  acm_write_bulk ; 
 int /*<<< orphan*/  FUNC9 (struct usb_cdc_parsed_header*,struct usb_interface*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  dev_attr_bmCapabilities ; 
 int /*<<< orphan*/  dev_attr_iCountryCodeRelDate ; 
 int /*<<< orphan*/  dev_attr_wCountryCodes ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC19 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct acm_wb* FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_cdc_parsed_header*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct usb_interface*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_6__*) ; 
 struct device* FUNC30 (TYPE_6__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 void* FUNC31 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,struct usb_interface*,struct acm_wb*) ; 
 int /*<<< orphan*/  FUNC35 (struct usb_interface*) ; 
 int FUNC36 (struct usb_interface*) ; 
 scalar_t__ FUNC37 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC38 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct acm_wb*) ; 
 int /*<<< orphan*/  FUNC39 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct acm_wb*,int) ; 
 int FUNC40 (TYPE_5__*,struct usb_interface**,struct usb_interface**,struct usb_interface**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (struct usb_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct urb*) ; 
 int /*<<< orphan*/  FUNC43 (struct usb_interface*) ; 
 struct usb_interface* FUNC44 (struct usb_device*,int) ; 
 scalar_t__ FUNC45 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC46 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (struct usb_interface*,struct acm_wb*) ; 
 int /*<<< orphan*/  FUNC49 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC51(struct usb_interface *intf,
		     const struct usb_device_id *id)
{
	struct usb_cdc_union_desc *union_header = NULL;
	struct usb_cdc_call_mgmt_descriptor *cmgmd = NULL;
	unsigned char *buffer = intf->altsetting->extra;
	int buflen = intf->altsetting->extralen;
	struct usb_interface *control_interface;
	struct usb_interface *data_interface;
	struct usb_endpoint_descriptor *epctrl = NULL;
	struct usb_endpoint_descriptor *epread = NULL;
	struct usb_endpoint_descriptor *epwrite = NULL;
	struct usb_device *usb_dev = FUNC19(intf);
	struct usb_cdc_parsed_header h;
	struct acm *acm;
	int minor;
	int ctrlsize, readsize;
	u8 *buf;
	int call_intf_num = -1;
	int data_intf_num = -1;
	unsigned long quirks;
	int num_rx_buf;
	int i;
	int combined_interfaces = 0;
	struct device *tty_dev;
	int rv = -ENOMEM;
	int res;

	/* normal quirks */
	quirks = (unsigned long)id->driver_info;

	if (quirks == IGNORE_DEVICE)
		return -ENODEV;

	FUNC24(&h, 0x00, sizeof(struct usb_cdc_parsed_header));

	num_rx_buf = (quirks == SINGLE_RX_URB) ? 1 : ACM_NR;

	/* handle quirks deadly to normal probing*/
	if (quirks == NO_UNION_NORMAL) {
		data_interface = FUNC44(usb_dev, 1);
		control_interface = FUNC44(usb_dev, 0);
		/* we would crash */
		if (!data_interface || !control_interface)
			return -ENODEV;
		goto skip_normal_probe;
	}

	/* normal probing*/
	if (!buffer) {
		FUNC12(&intf->dev, "Weird descriptor references\n");
		return -EINVAL;
	}

	if (!intf->cur_altsetting)
		return -EINVAL;

	if (!buflen) {
		if (intf->cur_altsetting->endpoint &&
				intf->cur_altsetting->endpoint->extralen &&
				intf->cur_altsetting->endpoint->extra) {
			FUNC11(&intf->dev,
				"Seeking extra descriptors on endpoint\n");
			buflen = intf->cur_altsetting->endpoint->extralen;
			buffer = intf->cur_altsetting->endpoint->extra;
		} else {
			FUNC12(&intf->dev,
				"Zero length descriptor references\n");
			return -EINVAL;
		}
	}

	FUNC9(&h, intf, buffer, buflen);
	union_header = h.usb_cdc_union_desc;
	cmgmd = h.usb_cdc_call_mgmt_descriptor;
	if (cmgmd)
		call_intf_num = cmgmd->bDataInterface;

	if (!union_header) {
		if (call_intf_num > 0) {
			FUNC11(&intf->dev, "No union descriptor, using call management descriptor\n");
			/* quirks for Droids MuIn LCD */
			if (quirks & NO_DATA_INTERFACE) {
				data_interface = FUNC44(usb_dev, 0);
			} else {
				data_intf_num = call_intf_num;
				data_interface = FUNC44(usb_dev, data_intf_num);
			}
			control_interface = intf;
		} else {
			if (intf->cur_altsetting->desc.bNumEndpoints != 3) {
				FUNC11(&intf->dev,"No union descriptor, giving up\n");
				return -ENODEV;
			} else {
				FUNC14(&intf->dev,"No union descriptor, testing for castrated device\n");
				combined_interfaces = 1;
				control_interface = data_interface = intf;
				goto look_for_collapsed_interface;
			}
		}
	} else {
		data_intf_num = union_header->bSlaveInterface0;
		control_interface = FUNC44(usb_dev, union_header->bMasterInterface0);
		data_interface = FUNC44(usb_dev, data_intf_num);
	}

	if (!control_interface || !data_interface) {
		FUNC11(&intf->dev, "no interfaces\n");
		return -ENODEV;
	}
	if (!data_interface->cur_altsetting || !control_interface->cur_altsetting)
		return -ENODEV;

	if (data_intf_num != call_intf_num)
		FUNC11(&intf->dev, "Separate call control interface. That is not fully supported.\n");

	if (control_interface == data_interface) {
		/* some broken devices designed for windows work this way */
		FUNC14(&intf->dev,"Control and data interfaces are not separated!\n");
		combined_interfaces = 1;
		/* a popular other OS doesn't use it */
		quirks |= NO_CAP_LINE;
		if (data_interface->cur_altsetting->desc.bNumEndpoints != 3) {
			FUNC12(&intf->dev, "This needs exactly 3 endpoints\n");
			return -EINVAL;
		}
look_for_collapsed_interface:
		res = FUNC40(data_interface->cur_altsetting,
				&epread, &epwrite, &epctrl, NULL);
		if (res)
			return res;

		goto made_compressed_probe;
	}

skip_normal_probe:

	/*workaround for switched interfaces */
	if (data_interface->cur_altsetting->desc.bInterfaceClass
						!= CDC_DATA_INTERFACE_TYPE) {
		if (control_interface->cur_altsetting->desc.bInterfaceClass
						== CDC_DATA_INTERFACE_TYPE) {
			FUNC11(&intf->dev,
				"Your device has switched interfaces.\n");
			FUNC27(control_interface, data_interface);
		} else {
			return -EINVAL;
		}
	}

	/* Accept probe requests only for the control interface */
	if (!combined_interfaces && intf != control_interface)
		return -ENODEV;

	if (!combined_interfaces && FUNC45(data_interface)) {
		/* valid in this context */
		FUNC11(&intf->dev, "The data interface isn't available\n");
		return -EBUSY;
	}


	if (data_interface->cur_altsetting->desc.bNumEndpoints < 2 ||
	    control_interface->cur_altsetting->desc.bNumEndpoints == 0)
		return -EINVAL;

	epctrl = &control_interface->cur_altsetting->endpoint[0].desc;
	epread = &data_interface->cur_altsetting->endpoint[0].desc;
	epwrite = &data_interface->cur_altsetting->endpoint[1].desc;


	/* workaround for switched endpoints */
	if (!FUNC35(epread)) {
		/* descriptors are swapped */
		FUNC11(&intf->dev,
			"The data interface has switched endpoints\n");
		FUNC27(epread, epwrite);
	}
made_compressed_probe:
	FUNC11(&intf->dev, "interfaces are valid\n");

	acm = FUNC22(sizeof(struct acm), GFP_KERNEL);
	if (acm == NULL)
		goto alloc_fail;

	FUNC28(&acm->port);
	acm->port.ops = &acm_port_ops;

	ctrlsize = FUNC36(epctrl);
	readsize = FUNC36(epread) *
				(quirks == SINGLE_RX_URB ? 1 : 2);
	acm->combined_interfaces = combined_interfaces;
	acm->writesize = FUNC36(epwrite) * 20;
	acm->control = control_interface;
	acm->data = data_interface;

	FUNC43(acm->control); /* undone in destruct() */

	minor = FUNC4(acm);
	if (minor < 0)
		goto alloc_fail1;

	acm->minor = minor;
	acm->dev = usb_dev;
	if (h.usb_cdc_acm_descriptor)
		acm->ctrl_caps = h.usb_cdc_acm_descriptor->bmCapabilities;
	if (quirks & NO_CAP_LINE)
		acm->ctrl_caps &= ~USB_CDC_CAP_LINE;
	acm->ctrlsize = ctrlsize;
	acm->readsize = readsize;
	acm->rx_buflimit = num_rx_buf;
	FUNC0(&acm->work, acm_softint);
	FUNC18(&acm->wioctl);
	FUNC26(&acm->write_lock);
	FUNC26(&acm->read_lock);
	FUNC25(&acm->mutex);
	if (FUNC37(epread)) {
		acm->bInterval = epread->bInterval;
		acm->in = FUNC47(usb_dev, epread->bEndpointAddress);
	} else {
		acm->in = FUNC46(usb_dev, epread->bEndpointAddress);
	}
	if (FUNC37(epwrite))
		acm->out = FUNC50(usb_dev, epwrite->bEndpointAddress);
	else
		acm->out = FUNC49(usb_dev, epwrite->bEndpointAddress);
	FUNC17(&acm->delayed);
	acm->quirks = quirks;

	buf = FUNC31(usb_dev, ctrlsize, GFP_KERNEL, &acm->ctrl_dma);
	if (!buf)
		goto alloc_fail1;
	acm->ctrl_buffer = buf;

	if (FUNC7(acm) < 0)
		goto alloc_fail2;

	acm->ctrlurb = FUNC32(0, GFP_KERNEL);
	if (!acm->ctrlurb)
		goto alloc_fail3;

	for (i = 0; i < num_rx_buf; i++) {
		struct acm_rb *rb = &(acm->read_buffers[i]);
		struct urb *urb;

		rb->base = FUNC31(acm->dev, readsize, GFP_KERNEL,
								&rb->dma);
		if (!rb->base)
			goto alloc_fail4;
		rb->index = i;
		rb->instance = acm;

		urb = FUNC32(0, GFP_KERNEL);
		if (!urb)
			goto alloc_fail4;

		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		urb->transfer_dma = rb->dma;
		if (FUNC37(epread))
			FUNC39(urb, acm->dev, acm->in, rb->base,
					 acm->readsize,
					 acm_read_bulk_callback, rb,
					 acm->bInterval);
		else
			FUNC38(urb, acm->dev, acm->in, rb->base,
					  acm->readsize,
					  acm_read_bulk_callback, rb);

		acm->read_urbs[i] = urb;
		FUNC3(i, &acm->read_urbs_free);
	}
	for (i = 0; i < ACM_NW; i++) {
		struct acm_wb *snd = &(acm->wb[i]);

		snd->urb = FUNC32(0, GFP_KERNEL);
		if (snd->urb == NULL)
			goto alloc_fail5;

		if (FUNC37(epwrite))
			FUNC39(snd->urb, usb_dev, acm->out,
				NULL, acm->writesize, acm_write_bulk, snd, epwrite->bInterval);
		else
			FUNC38(snd->urb, usb_dev, acm->out,
				NULL, acm->writesize, acm_write_bulk, snd);
		snd->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		if (quirks & SEND_ZERO_PACKET)
			snd->urb->transfer_flags |= URB_ZERO_PACKET;
		snd->instance = acm;
	}

	FUNC48(intf, acm);

	i = FUNC15(&intf->dev, &dev_attr_bmCapabilities);
	if (i < 0)
		goto alloc_fail5;

	if (h.usb_cdc_country_functional_desc) { /* export the country data */
		struct usb_cdc_country_functional_desc * cfd =
					h.usb_cdc_country_functional_desc;

		acm->country_codes = FUNC21(cfd->bLength - 4, GFP_KERNEL);
		if (!acm->country_codes)
			goto skip_countries;
		acm->country_code_size = cfd->bLength - 4;
		FUNC23(acm->country_codes, (u8 *)&cfd->wCountyCode0,
							cfd->bLength - 4);
		acm->country_rel_date = cfd->iCountryCodeRelDate;

		i = FUNC15(&intf->dev, &dev_attr_wCountryCodes);
		if (i < 0) {
			FUNC20(acm->country_codes);
			acm->country_codes = NULL;
			acm->country_code_size = 0;
			goto skip_countries;
		}

		i = FUNC15(&intf->dev,
						&dev_attr_iCountryCodeRelDate);
		if (i < 0) {
			FUNC16(&intf->dev, &dev_attr_wCountryCodes);
			FUNC20(acm->country_codes);
			acm->country_codes = NULL;
			acm->country_code_size = 0;
			goto skip_countries;
		}
	}

skip_countries:
	FUNC39(acm->ctrlurb, usb_dev,
			 FUNC47(usb_dev, epctrl->bEndpointAddress),
			 acm->ctrl_buffer, ctrlsize, acm_ctrl_irq, acm,
			 /* works around buggy devices */
			 epctrl->bInterval ? epctrl->bInterval : 16);
	acm->ctrlurb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
	acm->ctrlurb->transfer_dma = acm->ctrl_dma;
	acm->notification_buffer = NULL;
	acm->nb_index = 0;
	acm->nb_size = 0;

	FUNC13(&intf->dev, "ttyACM%d: USB ACM device\n", minor);

	acm->line.dwDTERate = FUNC10(9600);
	acm->line.bDataBits = 8;
	FUNC6(acm, &acm->line);

	FUNC34(&acm_driver, data_interface, acm);
	FUNC48(data_interface, acm);

	tty_dev = FUNC30(&acm->port, acm_tty_driver, minor,
			&control_interface->dev);
	if (FUNC1(tty_dev)) {
		rv = FUNC2(tty_dev);
		goto alloc_fail6;
	}

	if (quirks & CLEAR_HALT_CONDITIONS) {
		FUNC33(usb_dev, acm->in);
		FUNC33(usb_dev, acm->out);
	}

	return 0;
alloc_fail6:
	if (acm->country_codes) {
		FUNC16(&acm->control->dev,
				&dev_attr_wCountryCodes);
		FUNC16(&acm->control->dev,
				&dev_attr_iCountryCodeRelDate);
		FUNC20(acm->country_codes);
	}
	FUNC16(&acm->control->dev, &dev_attr_bmCapabilities);
alloc_fail5:
	FUNC48(intf, NULL);
	for (i = 0; i < ACM_NW; i++)
		FUNC42(acm->wb[i].urb);
alloc_fail4:
	for (i = 0; i < num_rx_buf; i++)
		FUNC42(acm->read_urbs[i]);
	FUNC5(acm);
	FUNC42(acm->ctrlurb);
alloc_fail3:
	FUNC8(acm);
alloc_fail2:
	FUNC41(usb_dev, ctrlsize, acm->ctrl_buffer, acm->ctrl_dma);
alloc_fail1:
	FUNC29(&acm->port);
alloc_fail:
	return rv;
}