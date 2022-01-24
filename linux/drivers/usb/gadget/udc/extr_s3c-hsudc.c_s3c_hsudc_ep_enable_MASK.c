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
typedef  int /*<<< orphan*/  u32 ;
struct usb_ep {scalar_t__ name; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; scalar_t__ bEndpointAddress; scalar_t__ bmAttributes; int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_4__ {scalar_t__ maxpacket; struct usb_endpoint_descriptor const* desc; } ;
struct s3c_hsudc_ep {scalar_t__ bEndpointAddress; TYPE_2__ ep; scalar_t__ wedge; scalar_t__ stopped; struct s3c_hsudc* dev; } ;
struct TYPE_3__ {scalar_t__ speed; } ;
struct s3c_hsudc {int /*<<< orphan*/  lock; scalar_t__ regs; TYPE_1__ gadget; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int ESHUTDOWN ; 
 scalar_t__ S3C_ECR ; 
 int /*<<< orphan*/  S3C_ECR_DUEN ; 
 int /*<<< orphan*/  S3C_ECR_IEMS ; 
 scalar_t__ S3C_EIER ; 
 scalar_t__ USB_DT_ENDPOINT ; 
 scalar_t__ USB_ENDPOINT_XFER_BULK ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ ep0name ; 
 int /*<<< orphan*/  FUNC1 (struct s3c_hsudc_ep*) ; 
 scalar_t__ FUNC2 (struct s3c_hsudc_ep*) ; 
 struct s3c_hsudc_ep* FUNC3 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s3c_hsudc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (struct usb_endpoint_descriptor const*) ; 
 scalar_t__ FUNC9 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct usb_ep *_ep,
				const struct usb_endpoint_descriptor *desc)
{
	struct s3c_hsudc_ep *hsep;
	struct s3c_hsudc *hsudc;
	unsigned long flags;
	u32 ecr = 0;

	hsep = FUNC3(_ep);
	if (!_ep || !desc || _ep->name == ep0name
		|| desc->bDescriptorType != USB_DT_ENDPOINT
		|| hsep->bEndpointAddress != desc->bEndpointAddress
		|| FUNC2(hsep) < FUNC8(desc))
		return -EINVAL;

	if ((desc->bmAttributes == USB_ENDPOINT_XFER_BULK
		&& FUNC8(desc) != FUNC2(hsep))
		|| !desc->wMaxPacketSize)
		return -ERANGE;

	hsudc = hsep->dev;
	if (!hsudc->driver || hsudc->gadget.speed == USB_SPEED_UNKNOWN)
		return -ESHUTDOWN;

	FUNC6(&hsudc->lock, flags);

	FUNC5(hsudc, hsep->bEndpointAddress);
	ecr |= ((FUNC9(desc)) ? S3C_ECR_IEMS : S3C_ECR_DUEN);
	FUNC10(ecr, hsudc->regs + S3C_ECR);

	hsep->stopped = hsep->wedge = 0;
	hsep->ep.desc = desc;
	hsep->ep.maxpacket = FUNC8(desc);

	FUNC4(_ep, 0);
	FUNC0(FUNC1(hsep), hsudc->regs + S3C_EIER);

	FUNC7(&hsudc->lock, flags);
	return 0;
}