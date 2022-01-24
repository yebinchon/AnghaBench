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
typedef  void* u32 ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; } ;
struct pxa_udc {int /*<<< orphan*/  gadget; TYPE_1__* driver; struct pxa_ep* pxa_ep; } ;
struct pxa_ep {int /*<<< orphan*/  lock; } ;
struct pxa27x_request {int dummy; } ;
struct TYPE_2__ {int (* setup ) (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EPROTO ; 
 int /*<<< orphan*/  IN_DATA_STAGE ; 
 int /*<<< orphan*/  OUT_DATA_STAGE ; 
 int /*<<< orphan*/  STALL ; 
 int /*<<< orphan*/  UDCCSR ; 
 int UDCCSR0_FST ; 
 int UDCCSR0_FTF ; 
 int UDCCSR0_OPC ; 
 int UDCCSR0_SA ; 
 int /*<<< orphan*/  UDCDR ; 
 int USB_DIR_IN ; 
 scalar_t__ FUNC0 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_ep*,char*,void*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_ep*,char*,int) ; 
 int FUNC3 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_ep*,int) ; 
 scalar_t__ FUNC5 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct usb_ctrlrequest*) ; 
 void* FUNC12 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct pxa_udc *udc,
				struct pxa27x_request *req)
{
	struct pxa_ep *ep = &udc->pxa_ep[0];
	union {
		struct usb_ctrlrequest	r;
		u32			word[2];
	} u;
	int i;
	int have_extrabytes = 0;
	unsigned long flags;

	FUNC7(ep, -EPROTO);
	FUNC9(&ep->lock, flags);

	/*
	 * In the PXA320 manual, in the section about Back-to-Back setup
	 * packets, it describes this situation.  The solution is to set OPC to
	 * get rid of the status packet, and then continue with the setup
	 * packet. Generalize to pxa27x CPUs.
	 */
	if (FUNC5(ep) && (FUNC0(ep) == 0))
		FUNC4(ep, UDCCSR0_OPC);

	/* read SETUP packet */
	for (i = 0; i < 2; i++) {
		if (FUNC13(FUNC3(ep)))
			goto stall;
		u.word[i] = FUNC12(ep, UDCDR);
	}

	have_extrabytes = !FUNC3(ep);
	while (!FUNC3(ep)) {
		i = FUNC12(ep, UDCDR);
		FUNC2(ep, "wrong to have extra bytes for setup : 0x%08x\n", i);
	}

	FUNC1(ep, "SETUP %02x.%02x v%04x i%04x l%04x\n",
		u.r.bRequestType, u.r.bRequest,
		FUNC6(u.r.wValue), FUNC6(u.r.wIndex),
		FUNC6(u.r.wLength));
	if (FUNC13(have_extrabytes))
		goto stall;

	if (u.r.bRequestType & USB_DIR_IN)
		FUNC8(udc, IN_DATA_STAGE);
	else
		FUNC8(udc, OUT_DATA_STAGE);

	/* Tell UDC to enter Data Stage */
	FUNC4(ep, UDCCSR0_SA | UDCCSR0_OPC);

	FUNC10(&ep->lock, flags);
	i = udc->driver->setup(&udc->gadget, &u.r);
	FUNC9(&ep->lock, flags);
	if (i < 0)
		goto stall;
out:
	FUNC10(&ep->lock, flags);
	return;
stall:
	FUNC1(ep, "protocol STALL, udccsr0=%03x err %d\n",
		FUNC12(ep, UDCCSR), i);
	FUNC4(ep, UDCCSR0_FST | UDCCSR0_FTF);
	FUNC8(udc, STALL);
	goto out;
}