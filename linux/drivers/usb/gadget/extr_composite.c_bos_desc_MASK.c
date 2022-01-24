#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_ssp_cap_descriptor {int bLength; int bFunctionalitySupport; void* wTotalLength; void** bmSublinkSpeedAttr; void* wFunctionalitySupport; void* bmAttributes; scalar_t__ wReserved; scalar_t__ bReserved; int /*<<< orphan*/  bDevCapabilityType; void* bDescriptorType; scalar_t__ bNumDeviceCaps; void* bU2DevExitLat; int /*<<< orphan*/  bU1devExitLat; void* wSpeedSupported; } ;
struct usb_ss_cap_descriptor {int bLength; int bFunctionalitySupport; void* wTotalLength; void** bmSublinkSpeedAttr; void* wFunctionalitySupport; void* bmAttributes; scalar_t__ wReserved; scalar_t__ bReserved; int /*<<< orphan*/  bDevCapabilityType; void* bDescriptorType; scalar_t__ bNumDeviceCaps; void* bU2DevExitLat; int /*<<< orphan*/  bU1devExitLat; void* wSpeedSupported; } ;
struct usb_ext_cap_descriptor {int bLength; int bFunctionalitySupport; void* wTotalLength; void** bmSublinkSpeedAttr; void* wFunctionalitySupport; void* bmAttributes; scalar_t__ wReserved; scalar_t__ bReserved; int /*<<< orphan*/  bDevCapabilityType; void* bDescriptorType; scalar_t__ bNumDeviceCaps; void* bU2DevExitLat; int /*<<< orphan*/  bU1devExitLat; void* wSpeedSupported; } ;
struct usb_dcd_config_params {scalar_t__ besl_baseline; scalar_t__ besl_deep; void* bU2DevExitLat; int /*<<< orphan*/  bU1devExitLat; } ;
struct usb_composite_dev {TYPE_2__* req; TYPE_3__* gadget; } ;
struct usb_bos_descriptor {int bLength; int bFunctionalitySupport; void* wTotalLength; void** bmSublinkSpeedAttr; void* wFunctionalitySupport; void* bmAttributes; scalar_t__ wReserved; scalar_t__ bReserved; int /*<<< orphan*/  bDevCapabilityType; void* bDescriptorType; scalar_t__ bNumDeviceCaps; void* bU2DevExitLat; int /*<<< orphan*/  bU1devExitLat; void* wSpeedSupported; } ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {struct usb_ssp_cap_descriptor* buf; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_config_params ) (TYPE_3__*,struct usb_dcd_config_params*) ;} ;

/* Variables and functions */
 int USB_5GBPS_OPERATION ; 
 unsigned int USB_BESL_BASELINE_VALID ; 
 unsigned int USB_BESL_DEEP_VALID ; 
 unsigned int USB_BESL_SUPPORT ; 
 int /*<<< orphan*/  USB_CAP_TYPE_EXT ; 
 scalar_t__ USB_DEFAULT_BESL_UNSPECIFIED ; 
 int /*<<< orphan*/  USB_DEFAULT_U1_DEV_EXIT_LAT ; 
 int USB_DEFAULT_U2_DEV_EXIT_LAT ; 
 void* USB_DT_BOS ; 
 int USB_DT_BOS_SIZE ; 
 void* USB_DT_DEVICE_CAPABILITY ; 
 void* USB_DT_USB_EXT_CAP_SIZE ; 
 void* FUNC0 (int) ; 
 void* USB_DT_USB_SS_CAP_SIZE ; 
 int USB_FULL_SPEED_OPERATION ; 
 int USB_HIGH_SPEED_OPERATION ; 
 int USB_LOW_SPEED_OPERATION ; 
 unsigned int USB_LPM_SUPPORT ; 
 unsigned int FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  USB_SSP_CAP_TYPE ; 
 int /*<<< orphan*/  USB_SS_CAP_TYPE ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (void**,void*) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct usb_dcd_config_params*) ; 

__attribute__((used)) static int FUNC10(struct usb_composite_dev *cdev)
{
	struct usb_ext_cap_descriptor	*usb_ext;
	struct usb_dcd_config_params	dcd_config_params;
	struct usb_bos_descriptor	*bos = cdev->req->buf;
	unsigned int			besl = 0;

	bos->bLength = USB_DT_BOS_SIZE;
	bos->bDescriptorType = USB_DT_BOS;

	bos->wTotalLength = FUNC3(USB_DT_BOS_SIZE);
	bos->bNumDeviceCaps = 0;

	/* Get Controller configuration */
	if (cdev->gadget->ops->get_config_params) {
		cdev->gadget->ops->get_config_params(cdev->gadget,
						     &dcd_config_params);
	} else {
		dcd_config_params.besl_baseline =
			USB_DEFAULT_BESL_UNSPECIFIED;
		dcd_config_params.besl_deep =
			USB_DEFAULT_BESL_UNSPECIFIED;
		dcd_config_params.bU1devExitLat =
			USB_DEFAULT_U1_DEV_EXIT_LAT;
		dcd_config_params.bU2DevExitLat =
			FUNC3(USB_DEFAULT_U2_DEV_EXIT_LAT);
	}

	if (dcd_config_params.besl_baseline != USB_DEFAULT_BESL_UNSPECIFIED)
		besl = USB_BESL_BASELINE_VALID |
			FUNC1(dcd_config_params.besl_baseline);

	if (dcd_config_params.besl_deep != USB_DEFAULT_BESL_UNSPECIFIED)
		besl |= USB_BESL_DEEP_VALID |
			FUNC2(dcd_config_params.besl_deep);

	/*
	 * A SuperSpeed device shall include the USB2.0 extension descriptor
	 * and shall support LPM when operating in USB2.0 HS mode.
	 */
	usb_ext = cdev->req->buf + FUNC8(bos->wTotalLength);
	bos->bNumDeviceCaps++;
	FUNC7(&bos->wTotalLength, USB_DT_USB_EXT_CAP_SIZE);
	usb_ext->bLength = USB_DT_USB_EXT_CAP_SIZE;
	usb_ext->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
	usb_ext->bDevCapabilityType = USB_CAP_TYPE_EXT;
	usb_ext->bmAttributes = FUNC4(USB_LPM_SUPPORT |
					    USB_BESL_SUPPORT | besl);

	/*
	 * The Superspeed USB Capability descriptor shall be implemented by all
	 * SuperSpeed devices.
	 */
	if (FUNC5(cdev->gadget)) {
		struct usb_ss_cap_descriptor *ss_cap;

		ss_cap = cdev->req->buf + FUNC8(bos->wTotalLength);
		bos->bNumDeviceCaps++;
		FUNC7(&bos->wTotalLength, USB_DT_USB_SS_CAP_SIZE);
		ss_cap->bLength = USB_DT_USB_SS_CAP_SIZE;
		ss_cap->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
		ss_cap->bDevCapabilityType = USB_SS_CAP_TYPE;
		ss_cap->bmAttributes = 0; /* LTM is not supported yet */
		ss_cap->wSpeedSupported = FUNC3(USB_LOW_SPEED_OPERATION |
						      USB_FULL_SPEED_OPERATION |
						      USB_HIGH_SPEED_OPERATION |
						      USB_5GBPS_OPERATION);
		ss_cap->bFunctionalitySupport = USB_LOW_SPEED_OPERATION;
		ss_cap->bU1devExitLat = dcd_config_params.bU1devExitLat;
		ss_cap->bU2DevExitLat = dcd_config_params.bU2DevExitLat;
	}

	/* The SuperSpeedPlus USB Device Capability descriptor */
	if (FUNC6(cdev->gadget)) {
		struct usb_ssp_cap_descriptor *ssp_cap;

		ssp_cap = cdev->req->buf + FUNC8(bos->wTotalLength);
		bos->bNumDeviceCaps++;

		/*
		 * Report typical values.
		 */

		FUNC7(&bos->wTotalLength, FUNC0(1));
		ssp_cap->bLength = FUNC0(1);
		ssp_cap->bDescriptorType = USB_DT_DEVICE_CAPABILITY;
		ssp_cap->bDevCapabilityType = USB_SSP_CAP_TYPE;
		ssp_cap->bReserved = 0;
		ssp_cap->wReserved = 0;

		/* SSAC = 1 (2 attributes) */
		ssp_cap->bmAttributes = FUNC4(1);

		/* Min RX/TX Lane Count = 1 */
		ssp_cap->wFunctionalitySupport =
			FUNC3((1 << 8) | (1 << 12));

		/*
		 * bmSublinkSpeedAttr[0]:
		 *   ST  = Symmetric, RX
		 *   LSE =  3 (Gbps)
		 *   LP  =  1 (SuperSpeedPlus)
		 *   LSM = 10 (10 Gbps)
		 */
		ssp_cap->bmSublinkSpeedAttr[0] =
			FUNC4((3 << 4) | (1 << 14) | (0xa << 16));
		/*
		 * bmSublinkSpeedAttr[1] =
		 *   ST  = Symmetric, TX
		 *   LSE =  3 (Gbps)
		 *   LP  =  1 (SuperSpeedPlus)
		 *   LSM = 10 (10 Gbps)
		 */
		ssp_cap->bmSublinkSpeedAttr[1] =
			FUNC4((3 << 4) | (1 << 14) |
				    (0xa << 16) | (1 << 7));
	}

	return FUNC8(bos->wTotalLength);
}