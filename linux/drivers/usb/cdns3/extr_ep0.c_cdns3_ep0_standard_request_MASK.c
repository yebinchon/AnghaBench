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
struct usb_ctrlrequest {int bRequest; } ;
struct cdns3_device {int dummy; } ;

/* Variables and functions */
#define  USB_REQ_CLEAR_FEATURE 134 
#define  USB_REQ_GET_STATUS 133 
#define  USB_REQ_SET_ADDRESS 132 
#define  USB_REQ_SET_CONFIGURATION 131 
#define  USB_REQ_SET_FEATURE 130 
#define  USB_REQ_SET_ISOCH_DELAY 129 
#define  USB_REQ_SET_SEL 128 
 int FUNC0 (struct cdns3_device*,struct usb_ctrlrequest*) ; 
 int FUNC1 (struct cdns3_device*,struct usb_ctrlrequest*) ; 
 int FUNC2 (struct cdns3_device*,struct usb_ctrlrequest*,int) ; 
 int FUNC3 (struct cdns3_device*,struct usb_ctrlrequest*) ; 
 int FUNC4 (struct cdns3_device*,struct usb_ctrlrequest*) ; 
 int FUNC5 (struct cdns3_device*,struct usb_ctrlrequest*) ; 
 int FUNC6 (struct cdns3_device*,struct usb_ctrlrequest*) ; 

__attribute__((used)) static int FUNC7(struct cdns3_device *priv_dev,
				      struct usb_ctrlrequest *ctrl_req)
{
	int ret;

	switch (ctrl_req->bRequest) {
	case USB_REQ_SET_ADDRESS:
		ret = FUNC3(priv_dev, ctrl_req);
		break;
	case USB_REQ_SET_CONFIGURATION:
		ret = FUNC4(priv_dev, ctrl_req);
		break;
	case USB_REQ_GET_STATUS:
		ret = FUNC1(priv_dev, ctrl_req);
		break;
	case USB_REQ_CLEAR_FEATURE:
		ret = FUNC2(priv_dev, ctrl_req, 0);
		break;
	case USB_REQ_SET_FEATURE:
		ret = FUNC2(priv_dev, ctrl_req, 1);
		break;
	case USB_REQ_SET_SEL:
		ret = FUNC6(priv_dev, ctrl_req);
		break;
	case USB_REQ_SET_ISOCH_DELAY:
		ret = FUNC5(priv_dev, ctrl_req);
		break;
	default:
		ret = FUNC0(priv_dev, ctrl_req);
		break;
	}

	return ret;
}