#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  void* uint16_t ;
struct wusb_dev {TYPE_4__* wusb_cap_descr; } ;
struct TYPE_12__ {void* cur_window; void* info3; void* info2; void* info1; } ;
struct whc_qset {int max_seq; int max_burst; TYPE_6__ qh; void* max_packet; TYPE_3__* ep; } ;
struct TYPE_11__ {scalar_t__ phy_rate; } ;
struct whc {TYPE_5__ wusbhc; } ;
struct usb_wireless_ep_comp_descriptor {int bMaxSequence; int bMaxBurst; } ;
struct usb_device {int /*<<< orphan*/  portnum; struct wusb_dev* wusb_dev; } ;
struct urb {int /*<<< orphan*/  pipe; TYPE_2__* ep; struct usb_device* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  wPHYRates; } ;
struct TYPE_9__ {scalar_t__ extra; } ;
struct TYPE_7__ {int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_8__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int QH_INFO1_DIR_IN ; 
 int QH_INFO1_DIR_OUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ UWB_PHY_RATE_53 ; 
 void* FUNC10 (int) ; 
 scalar_t__ FUNC11 (void*) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct whc *whc, struct whc_qset *qset, struct urb *urb)
{
	struct usb_device *usb_dev = urb->dev;
	struct wusb_dev *wusb_dev = usb_dev->wusb_dev;
	struct usb_wireless_ep_comp_descriptor *epcd;
	bool is_out;
	uint8_t phy_rate;

	is_out = FUNC16(urb->pipe);

	qset->max_packet = FUNC12(urb->ep->desc.wMaxPacketSize);

	epcd = (struct usb_wireless_ep_comp_descriptor *)qset->ep->extra;
	if (epcd) {
		qset->max_seq = epcd->bMaxSequence;
		qset->max_burst = epcd->bMaxBurst;
	} else {
		qset->max_seq = 2;
		qset->max_burst = 1;
	}

	/*
	 * Initial PHY rate is 53.3 Mbit/s for control endpoints or
	 * the maximum supported by the device for other endpoints
	 * (unless limited by the user).
	 */
	if (FUNC14(urb->pipe))
		phy_rate = UWB_PHY_RATE_53;
	else {
		uint16_t phy_rates;

		phy_rates = FUNC12(wusb_dev->wusb_cap_descr->wPHYRates);
		phy_rate = FUNC11(phy_rates) - 1;
		if (phy_rate > whc->wusbhc.phy_rate)
			phy_rate = whc->wusbhc.phy_rate;
	}

	qset->qh.info1 = FUNC10(
		FUNC1(FUNC15(urb->pipe))
		| (is_out ? QH_INFO1_DIR_OUT : QH_INFO1_DIR_IN)
		| FUNC13(urb->pipe)
		| FUNC0(FUNC17(usb_dev->portnum))
		| FUNC2(qset->max_packet)
		);
	qset->qh.info2 = FUNC10(
		FUNC3(qset->max_burst)
		| FUNC4(0)
		| FUNC5(3)
		| FUNC6(3)
		| FUNC7(qset->max_seq - 1)
		);
	/* FIXME: where can we obtain these Tx parameters from?  Why
	 * doesn't the chip know what Tx power to use? It knows the Rx
	 * strength and can presumably guess the Tx power required
	 * from that? */
	qset->qh.info3 = FUNC10(
		FUNC9(phy_rate)
		| FUNC8(0) /* 0 == max power */
		);

	qset->qh.cur_window = FUNC10((1 << qset->max_burst) - 1);
}