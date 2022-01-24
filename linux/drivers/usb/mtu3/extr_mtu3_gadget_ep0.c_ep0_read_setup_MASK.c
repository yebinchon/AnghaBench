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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  wLength; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; } ;
struct mtu3_request {int /*<<< orphan*/  request; } ;
struct mtu3 {int /*<<< orphan*/  ep0_state; int /*<<< orphan*/  mac_base; int /*<<< orphan*/  dev; int /*<<< orphan*/  ep0; } ;

/* Variables and functions */
 int EP0_DPHTX ; 
 int EP0_SETUPPKTRDY ; 
 int EP0_W1C_BITS ; 
 int /*<<< orphan*/  MU3D_EP0_STATE_RX ; 
 int /*<<< orphan*/  MU3D_EP0_STATE_TX ; 
 int /*<<< orphan*/  U3D_EP0CSR ; 
 int /*<<< orphan*/  U3D_RXCOUNT0 ; 
 int USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtu3*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mtu3_request* FUNC6 (struct mtu3*) ; 

__attribute__((used)) static void FUNC7(struct mtu3 *mtu, struct usb_ctrlrequest *setup)
{
	struct mtu3_request *mreq;
	u32 count;
	u32 csr;

	csr = FUNC4(mtu->mac_base, U3D_EP0CSR) & EP0_W1C_BITS;
	count = FUNC4(mtu->mac_base, U3D_RXCOUNT0);

	FUNC1(mtu->ep0, (u8 *)setup, count);

	FUNC0(mtu->dev, "SETUP req%02x.%02x v%04x i%04x l%04x\n",
		 setup->bRequestType, setup->bRequest,
		 FUNC3(setup->wValue), FUNC3(setup->wIndex),
		 FUNC3(setup->wLength));

	/* clean up any leftover transfers */
	mreq = FUNC6(mtu);
	if (mreq)
		FUNC2(mtu, &mreq->request);

	if (FUNC3(setup->wLength) == 0) {
		;	/* no data stage, nothing to do */
	} else if (setup->bRequestType & USB_DIR_IN) {
		FUNC5(mtu->mac_base, U3D_EP0CSR,
			csr | EP0_SETUPPKTRDY | EP0_DPHTX);
		mtu->ep0_state = MU3D_EP0_STATE_TX;
	} else {
		FUNC5(mtu->mac_base, U3D_EP0CSR,
			(csr | EP0_SETUPPKTRDY) & (~EP0_DPHTX));
		mtu->ep0_state = MU3D_EP0_STATE_RX;
	}
}