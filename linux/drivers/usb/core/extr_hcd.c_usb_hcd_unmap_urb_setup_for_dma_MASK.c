#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sysdev; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct usb_ctrlrequest {int dummy; } ;
struct urb {int transfer_flags; int /*<<< orphan*/  setup_packet; int /*<<< orphan*/  setup_dma; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HAS_DMA ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int URB_SETUP_MAP_LOCAL ; 
 int URB_SETUP_MAP_SINGLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct usb_hcd *hcd, struct urb *urb)
{
	if (FUNC0(CONFIG_HAS_DMA) &&
	    (urb->transfer_flags & URB_SETUP_MAP_SINGLE))
		FUNC1(hcd->self.sysdev,
				urb->setup_dma,
				sizeof(struct usb_ctrlrequest),
				DMA_TO_DEVICE);
	else if (urb->transfer_flags & URB_SETUP_MAP_LOCAL)
		FUNC2(urb->dev->bus,
				&urb->setup_dma,
				(void **) &urb->setup_packet,
				sizeof(struct usb_ctrlrequest),
				DMA_TO_DEVICE);

	/* Make it safe to call this routine more than once */
	urb->transfer_flags &= ~(URB_SETUP_MAP_SINGLE | URB_SETUP_MAP_LOCAL);
}