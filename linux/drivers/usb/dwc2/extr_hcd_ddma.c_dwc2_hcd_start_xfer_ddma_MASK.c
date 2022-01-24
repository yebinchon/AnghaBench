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
typedef  int /*<<< orphan*/  u16 ;
struct dwc2_qh {int /*<<< orphan*/  ntd; struct dwc2_host_chan* channel; } ;
struct dwc2_hsotg {int dummy; } ;
struct dwc2_host_chan {int ep_type; int /*<<< orphan*/  ntd; int /*<<< orphan*/  xfer_started; } ;

/* Variables and functions */
#define  USB_ENDPOINT_XFER_BULK 131 
#define  USB_ENDPOINT_XFER_CONTROL 130 
#define  USB_ENDPOINT_XFER_INT 129 
#define  USB_ENDPOINT_XFER_ISOC 128 
 int /*<<< orphan*/  FUNC0 (struct dwc2_hsotg*,struct dwc2_host_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,struct dwc2_qh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc2_hsotg*,struct dwc2_qh*,int) ; 

void FUNC6(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh)
{
	/* Channel is already assigned */
	struct dwc2_host_chan *chan = qh->channel;
	u16 skip_frames = 0;

	switch (chan->ep_type) {
	case USB_ENDPOINT_XFER_CONTROL:
	case USB_ENDPOINT_XFER_BULK:
		FUNC2(hsotg, qh);
		FUNC0(hsotg, chan);
		break;
	case USB_ENDPOINT_XFER_INT:
		FUNC2(hsotg, qh);
		FUNC5(hsotg, qh, 1);
		FUNC0(hsotg, chan);
		break;
	case USB_ENDPOINT_XFER_ISOC:
		if (!qh->ntd)
			skip_frames = FUNC4(hsotg, qh);
		FUNC1(hsotg, qh, skip_frames);

		if (!chan->xfer_started) {
			FUNC5(hsotg, qh, 1);

			/*
			 * Always set to max, instead of actual size. Otherwise
			 * ntd will be changed with channel being enabled. Not
			 * recommended.
			 */
			chan->ntd = FUNC3(qh);

			/* Enable channel only once for ISOC */
			FUNC0(hsotg, chan);
		}

		break;
	default:
		break;
	}
}