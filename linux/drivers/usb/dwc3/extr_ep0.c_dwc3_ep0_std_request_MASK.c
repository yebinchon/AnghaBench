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
struct dwc3 {int dummy; } ;

/* Variables and functions */
#define  USB_REQ_CLEAR_FEATURE 134 
#define  USB_REQ_GET_STATUS 133 
#define  USB_REQ_SET_ADDRESS 132 
#define  USB_REQ_SET_CONFIGURATION 131 
#define  USB_REQ_SET_FEATURE 130 
#define  USB_REQ_SET_ISOCH_DELAY 129 
#define  USB_REQ_SET_SEL 128 
 int FUNC0 (struct dwc3*,struct usb_ctrlrequest*) ; 
 int FUNC1 (struct dwc3*,struct usb_ctrlrequest*,int) ; 
 int FUNC2 (struct dwc3*,struct usb_ctrlrequest*) ; 
 int FUNC3 (struct dwc3*,struct usb_ctrlrequest*) ; 
 int FUNC4 (struct dwc3*,struct usb_ctrlrequest*) ; 
 int FUNC5 (struct dwc3*,struct usb_ctrlrequest*) ; 
 int FUNC6 (struct dwc3*,struct usb_ctrlrequest*) ; 

__attribute__((used)) static int FUNC7(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
{
	int ret;

	switch (ctrl->bRequest) {
	case USB_REQ_GET_STATUS:
		ret = FUNC2(dwc, ctrl);
		break;
	case USB_REQ_CLEAR_FEATURE:
		ret = FUNC1(dwc, ctrl, 0);
		break;
	case USB_REQ_SET_FEATURE:
		ret = FUNC1(dwc, ctrl, 1);
		break;
	case USB_REQ_SET_ADDRESS:
		ret = FUNC3(dwc, ctrl);
		break;
	case USB_REQ_SET_CONFIGURATION:
		ret = FUNC4(dwc, ctrl);
		break;
	case USB_REQ_SET_SEL:
		ret = FUNC6(dwc, ctrl);
		break;
	case USB_REQ_SET_ISOCH_DELAY:
		ret = FUNC5(dwc, ctrl);
		break;
	default:
		ret = FUNC0(dwc, ctrl);
		break;
	}

	return ret;
}