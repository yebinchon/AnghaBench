#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ prtena; } ;
union cvmx_usbcx_hprt {void* u32; TYPE_2__ s; } ;
struct TYPE_4__ {int frnum; } ;
union cvmx_usbcx_hfnum {TYPE_1__ s; void* u32; } ;
union cvmx_usbcx_haint {int u32; } ;
struct TYPE_6__ {int /*<<< orphan*/  sof; scalar_t__ hchint; scalar_t__ prtint; scalar_t__ disconnint; scalar_t__ nptxfemp; scalar_t__ ptxfemp; scalar_t__ rxflvl; } ;
union cvmx_usbcx_gintsts {TYPE_3__ s; void* u32; } ;
struct octeon_hcd {int frame_number; int init_flags; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int CVMX_USB_INITIALIZE_FLAGS_NO_DMA ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_hcd*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_hcd*) ; 
 void* FUNC8 (struct octeon_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct octeon_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct octeon_hcd*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (struct octeon_hcd*) ; 
 int /*<<< orphan*/  FUNC12 (struct octeon_hcd*,int) ; 

__attribute__((used)) static int FUNC13(struct octeon_hcd *usb)
{
	union cvmx_usbcx_hfnum usbc_hfnum;
	union cvmx_usbcx_gintsts usbc_gintsts;

	FUNC12(usb, sizeof(*usb));

	/* Update the frame counter */
	usbc_hfnum.u32 = FUNC8(usb, FUNC2(usb->index));
	if ((usb->frame_number & 0x3fff) > usbc_hfnum.s.frnum)
		usb->frame_number += 0x4000;
	usb->frame_number &= ~0x3fffull;
	usb->frame_number |= usbc_hfnum.s.frnum;

	/* Read the pending interrupts */
	usbc_gintsts.u32 = FUNC8(usb,
					       FUNC0(usb->index));

	/* Clear the interrupts now that we know about them */
	FUNC10(usb, FUNC0(usb->index),
			     usbc_gintsts.u32);

	if (usbc_gintsts.s.rxflvl) {
		/*
		 * RxFIFO Non-Empty (RxFLvl)
		 * Indicates that there is at least one packet pending to be
		 * read from the RxFIFO.
		 *
		 * In DMA mode this is handled by hardware
		 */
		if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
			FUNC6(usb);
	}
	if (usbc_gintsts.s.ptxfemp || usbc_gintsts.s.nptxfemp) {
		/* Fill the Tx FIFOs when not in DMA mode */
		if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
			FUNC7(usb);
	}
	if (usbc_gintsts.s.disconnint || usbc_gintsts.s.prtint) {
		union cvmx_usbcx_hprt usbc_hprt;
		/*
		 * Disconnect Detected Interrupt (DisconnInt)
		 * Asserted when a device disconnect is detected.
		 *
		 * Host Port Interrupt (PrtInt)
		 * The core sets this bit to indicate a change in port status of
		 * one of the O2P USB core ports in Host mode. The application
		 * must read the Host Port Control and Status (HPRT) register to
		 * determine the exact event that caused this interrupt. The
		 * application must clear the appropriate status bit in the Host
		 * Port Control and Status register to clear this bit.
		 *
		 * Call the user's port callback
		 */
		FUNC11(usb);
		/* Clear the port change bits */
		usbc_hprt.u32 =
			FUNC8(usb, FUNC3(usb->index));
		usbc_hprt.s.prtena = 0;
		FUNC10(usb, FUNC3(usb->index),
				     usbc_hprt.u32);
	}
	if (usbc_gintsts.s.hchint) {
		/*
		 * Host Channels Interrupt (HChInt)
		 * The core sets this bit to indicate that an interrupt is
		 * pending on one of the channels of the core (in Host mode).
		 * The application must read the Host All Channels Interrupt
		 * (HAINT) register to determine the exact number of the channel
		 * on which the interrupt occurred, and then read the
		 * corresponding Host Channel-n Interrupt (HCINTn) register to
		 * determine the exact cause of the interrupt. The application
		 * must clear the appropriate status bit in the HCINTn register
		 * to clear this bit.
		 */
		union cvmx_usbcx_haint usbc_haint;

		usbc_haint.u32 = FUNC8(usb,
					FUNC1(usb->index));
		while (usbc_haint.u32) {
			int channel;

			channel = FUNC4(usbc_haint.u32);
			FUNC5(usb, channel);
			usbc_haint.u32 ^= 1 << channel;
		}
	}

	FUNC9(usb, usbc_gintsts.s.sof);

	return 0;
}