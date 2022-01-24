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
typedef  int u16 ;
struct usb_ctrlrequest {int bRequestType; int bRequest; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; } ;
struct ast_vhub_ep {int dummy; } ;
typedef  enum std_req_rc { ____Placeholder_std_req_rc } std_req_rc ;

/* Variables and functions */
 int C_HUB_LOCAL_POWER ; 
 int C_HUB_OVER_CURRENT ; 
#define  ClearHubFeature 138 
#define  ClearPortFeature 137 
#define  ClearTTBuffer 136 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*,...) ; 
#define  GetHubDescriptor 135 
#define  GetHubStatus 134 
#define  GetPortStatus 133 
#define  GetTTState 132 
#define  ResetTT 131 
#define  SetHubFeature 130 
#define  SetPortFeature 129 
#define  StopTT 128 
 int USB_DT_HUB ; 
 int FUNC1 (struct ast_vhub_ep*,int,int) ; 
 int FUNC2 (struct ast_vhub_ep*,int) ; 
 int FUNC3 (struct ast_vhub_ep*,int,int) ; 
 int FUNC4 (struct ast_vhub_ep*,int,int) ; 
 int FUNC5 (struct ast_vhub_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int std_req_complete ; 
 int std_req_stall ; 

enum std_req_rc FUNC7(struct ast_vhub_ep *ep,
					   struct usb_ctrlrequest *crq)
{
	u16 wValue, wIndex, wLength;

	wValue = FUNC6(crq->wValue);
	wIndex = FUNC6(crq->wIndex);
	wLength = FUNC6(crq->wLength);

	switch ((crq->bRequestType << 8) | crq->bRequest) {
	case GetHubStatus:
		FUNC0(ep, "GetHubStatus\n");
		return FUNC5(ep, 0, 0, 0, 0);
	case GetPortStatus:
		FUNC0(ep, "GetPortStatus(%d)\n", wIndex & 0xff);
		return FUNC2(ep, wIndex & 0xf);
	case GetHubDescriptor:
		if (wValue != (USB_DT_HUB << 8))
			return std_req_stall;
		FUNC0(ep, "GetHubDescriptor(%d)\n", wIndex & 0xff);
		return FUNC3(ep, USB_DT_HUB, wLength);
	case SetHubFeature:
	case ClearHubFeature:
		FUNC0(ep, "Get/SetHubFeature(%d)\n", wValue);
		/* No feature, just complete the requests */
		if (wValue == C_HUB_LOCAL_POWER ||
		    wValue == C_HUB_OVER_CURRENT)
			return std_req_complete;
		return std_req_stall;
	case SetPortFeature:
		FUNC0(ep, "SetPortFeature(%d,%d)\n", wIndex & 0xf, wValue);
		return FUNC4(ep, wIndex & 0xf, wValue);
	case ClearPortFeature:
		FUNC0(ep, "ClearPortFeature(%d,%d)\n", wIndex & 0xf, wValue);
		return FUNC1(ep, wIndex & 0xf, wValue);
	case ClearTTBuffer:
	case ResetTT:
	case StopTT:
		return std_req_complete;
	case GetTTState:
		return FUNC5(ep, 0, 0, 0, 0);
	default:
		FUNC0(ep, "Unknown class request\n");
	}
	return std_req_stall;
}