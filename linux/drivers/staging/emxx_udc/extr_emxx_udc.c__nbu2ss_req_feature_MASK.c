#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct TYPE_2__ {int bRequestType; int wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
struct nbu2ss_udc {int /*<<< orphan*/  ep0_buf; TYPE_1__ ctrl; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int USB_DIR_IN ; 
 scalar_t__ USB_DIR_OUT ; 
 int USB_ENDPOINT_HALT ; 
#define  USB_RECIP_DEVICE 129 
#define  USB_RECIP_ENDPOINT 128 
 int USB_RECIP_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct nbu2ss_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nbu2ss_udc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nbu2ss_udc*,scalar_t__,int) ; 
 int FUNC3 (struct nbu2ss_udc*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct nbu2ss_udc *udc, bool bset)
{
	u8	recipient = (u8)(udc->ctrl.bRequestType & USB_RECIP_MASK);
	u8	direction = (u8)(udc->ctrl.bRequestType & USB_DIR_IN);
	u16	selector  = FUNC4(udc->ctrl.wValue);
	u16	wIndex    = FUNC4(udc->ctrl.wIndex);
	u8	ep_adrs;
	int	result = -EOPNOTSUPP;

	if ((udc->ctrl.wLength != 0x0000) ||
	    (direction != USB_DIR_OUT)) {
		return -EINVAL;
	}

	switch (recipient) {
	case USB_RECIP_DEVICE:
		if (bset)
			result =
			FUNC3(udc, selector, wIndex);
		break;

	case USB_RECIP_ENDPOINT:
		if (0x0000 == (wIndex & 0xFF70)) {
			if (selector == USB_ENDPOINT_HALT) {
				ep_adrs = wIndex & 0xFF;
				if (!bset) {
					FUNC1(udc,
								      ep_adrs);
				}

				FUNC2(udc, ep_adrs, bset);

				result = 0;
			}
		}
		break;

	default:
		break;
	}

	if (result >= 0)
		FUNC0(udc, udc->ep0_buf, 0);

	return result;
}