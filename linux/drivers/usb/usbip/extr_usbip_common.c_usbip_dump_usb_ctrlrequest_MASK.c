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
struct usb_ctrlrequest {int bRequestType; int bRequest; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;

/* Variables and functions */
#define  USB_REQ_CLEAR_FEATURE 138 
#define  USB_REQ_GET_CONFIGURATION 137 
#define  USB_REQ_GET_DESCRIPTOR 136 
#define  USB_REQ_GET_INTERFACE 135 
#define  USB_REQ_GET_STATUS 134 
#define  USB_REQ_SET_ADDRESS 133 
#define  USB_REQ_SET_CONFIGURATION 132 
#define  USB_REQ_SET_DESCRIPTOR 131 
#define  USB_REQ_SET_FEATURE 130 
#define  USB_REQ_SET_INTERFACE 129 
#define  USB_REQ_SYNCH_FRAME 128 
 int USB_TYPE_CLASS ; 
 int USB_TYPE_MASK ; 
 int USB_TYPE_RESERVED ; 
 int USB_TYPE_STANDARD ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct usb_ctrlrequest *cmd)
{
	if (!cmd) {
		FUNC0("       : null pointer\n");
		return;
	}

	FUNC0("       ");
	FUNC0("bRequestType(%02X) bRequest(%02X) wValue(%04X) wIndex(%04X) wLength(%04X) ",
		 cmd->bRequestType, cmd->bRequest,
		 cmd->wValue, cmd->wIndex, cmd->wLength);
	FUNC0("\n       ");

	if ((cmd->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD) {
		FUNC0("STANDARD ");
		switch (cmd->bRequest) {
		case USB_REQ_GET_STATUS:
			FUNC0("GET_STATUS\n");
			break;
		case USB_REQ_CLEAR_FEATURE:
			FUNC0("CLEAR_FEAT\n");
			break;
		case USB_REQ_SET_FEATURE:
			FUNC0("SET_FEAT\n");
			break;
		case USB_REQ_SET_ADDRESS:
			FUNC0("SET_ADDRRS\n");
			break;
		case USB_REQ_GET_DESCRIPTOR:
			FUNC0("GET_DESCRI\n");
			break;
		case USB_REQ_SET_DESCRIPTOR:
			FUNC0("SET_DESCRI\n");
			break;
		case USB_REQ_GET_CONFIGURATION:
			FUNC0("GET_CONFIG\n");
			break;
		case USB_REQ_SET_CONFIGURATION:
			FUNC0("SET_CONFIG\n");
			break;
		case USB_REQ_GET_INTERFACE:
			FUNC0("GET_INTERF\n");
			break;
		case USB_REQ_SET_INTERFACE:
			FUNC0("SET_INTERF\n");
			break;
		case USB_REQ_SYNCH_FRAME:
			FUNC0("SYNC_FRAME\n");
			break;
		default:
			FUNC0("REQ(%02X)\n", cmd->bRequest);
			break;
		}
		FUNC1(cmd->bRequestType);
	} else if ((cmd->bRequestType & USB_TYPE_MASK) == USB_TYPE_CLASS) {
		FUNC0("CLASS\n");
	} else if ((cmd->bRequestType & USB_TYPE_MASK) == USB_TYPE_VENDOR) {
		FUNC0("VENDOR\n");
	} else if ((cmd->bRequestType & USB_TYPE_MASK) == USB_TYPE_RESERVED) {
		FUNC0("RESERVED\n");
	}
}