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
typedef  int /*<<< orphan*/  u32 ;
struct usb_ctrlrequest {int /*<<< orphan*/  wValue; } ;
struct cdns3_endpoint {int flags; } ;
struct TYPE_2__ {int state; } ;
struct cdns3_device {TYPE_1__ gadget; struct cdns3_endpoint** eps; } ;
typedef  enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;

/* Variables and functions */
 int CDNS3_ENDPOINTS_MAX_COUNT ; 
 int EINVAL ; 
 int EP_CLAIMED ; 
#define  USB_STATE_ADDRESS 129 
#define  USB_STATE_CONFIGURED 128 
 int FUNC0 (struct cdns3_device*,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const) ; 

__attribute__((used)) static int FUNC6(struct cdns3_device *priv_dev,
					   struct usb_ctrlrequest *ctrl_req)
{
	enum usb_device_state device_state = priv_dev->gadget.state;
	struct cdns3_endpoint *priv_ep;
	u32 config = FUNC4(ctrl_req->wValue);
	int result = 0;
	int i;

	switch (device_state) {
	case USB_STATE_ADDRESS:
		/* Configure non-control EPs */
		for (i = 0; i < CDNS3_ENDPOINTS_MAX_COUNT; i++) {
			priv_ep = priv_dev->eps[i];
			if (!priv_ep)
				continue;

			if (priv_ep->flags & EP_CLAIMED)
				FUNC1(priv_ep);
		}

		result = FUNC0(priv_dev, ctrl_req);

		if (result)
			return result;

		if (config) {
			FUNC3(priv_dev);
		} else {
			FUNC2(priv_dev);
			FUNC5(&priv_dev->gadget,
					     USB_STATE_ADDRESS);
		}
		break;
	case USB_STATE_CONFIGURED:
		result = FUNC0(priv_dev, ctrl_req);

		if (!config && !result) {
			FUNC2(priv_dev);
			FUNC5(&priv_dev->gadget,
					     USB_STATE_ADDRESS);
		}
		break;
	default:
		result = -EINVAL;
	}

	return result;
}