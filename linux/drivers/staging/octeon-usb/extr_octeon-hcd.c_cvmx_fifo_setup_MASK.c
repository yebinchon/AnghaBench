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
struct TYPE_5__ {int ptxfsize; int ptxfstaddr; } ;
union cvmx_usbcx_hptxfsiz {void* u32; TYPE_2__ s; } ;
struct TYPE_4__ {int nptxfdep; int nptxfstaddr; } ;
union cvmx_usbcx_gnptxfsiz {void* u32; TYPE_1__ s; } ;
struct TYPE_6__ {int dfifodepth; } ;
union cvmx_usbcx_ghwcfg3 {TYPE_3__ s; void* u32; } ;
struct octeon_hcd {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (struct octeon_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_hcd*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  cvmx_usbcx_grstctl ; 
 int /*<<< orphan*/  cvmx_usbcx_grxfsiz ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_hcd*,int) ; 
 int /*<<< orphan*/  rxfdep ; 
 int /*<<< orphan*/  rxfflsh ; 
 int /*<<< orphan*/  txfflsh ; 
 int /*<<< orphan*/  txfnum ; 

__attribute__((used)) static void FUNC9(struct octeon_hcd *usb)
{
	union cvmx_usbcx_ghwcfg3 usbcx_ghwcfg3;
	union cvmx_usbcx_gnptxfsiz npsiz;
	union cvmx_usbcx_hptxfsiz psiz;

	usbcx_ghwcfg3.u32 = FUNC6(usb,
						FUNC0(usb->index));

	/*
	 * Program the USBC_GRXFSIZ register to select the size of the receive
	 * FIFO (25%).
	 */
	FUNC5(FUNC3(usb->index), cvmx_usbcx_grxfsiz,
			rxfdep, usbcx_ghwcfg3.s.dfifodepth / 4);

	/*
	 * Program the USBC_GNPTXFSIZ register to select the size and the start
	 * address of the non-periodic transmit FIFO for nonperiodic
	 * transactions (50%).
	 */
	npsiz.u32 = FUNC6(usb, FUNC1(usb->index));
	npsiz.s.nptxfdep = usbcx_ghwcfg3.s.dfifodepth / 2;
	npsiz.s.nptxfstaddr = usbcx_ghwcfg3.s.dfifodepth / 4;
	FUNC7(usb, FUNC1(usb->index), npsiz.u32);

	/*
	 * Program the USBC_HPTXFSIZ register to select the size and start
	 * address of the periodic transmit FIFO for periodic transactions
	 * (25%).
	 */
	psiz.u32 = FUNC6(usb, FUNC4(usb->index));
	psiz.s.ptxfsize = usbcx_ghwcfg3.s.dfifodepth / 4;
	psiz.s.ptxfstaddr = 3 * usbcx_ghwcfg3.s.dfifodepth / 4;
	FUNC7(usb, FUNC4(usb->index), psiz.u32);

	/* Flush all FIFOs */
	FUNC5(FUNC2(usb->index),
			cvmx_usbcx_grstctl, txfnum, 0x10);
	FUNC5(FUNC2(usb->index),
			cvmx_usbcx_grstctl, txfflsh, 1);
	FUNC8(usb, 0);
	FUNC5(FUNC2(usb->index),
			cvmx_usbcx_grstctl, rxfflsh, 1);
	FUNC8(usb, 1);
}