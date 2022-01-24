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
struct TYPE_4__ {int /*<<< orphan*/  ptxfspcavail; } ;
union cvmx_usbcx_hptxsts {TYPE_1__ s; void* u32; } ;
struct TYPE_5__ {int /*<<< orphan*/  nptxfspcavail; } ;
union cvmx_usbcx_gnptxsts {TYPE_2__ s; void* u32; } ;
struct TYPE_6__ {scalar_t__ head; scalar_t__ tail; } ;
struct octeon_hcd {int /*<<< orphan*/  index; TYPE_3__ nonperiodic; TYPE_3__ periodic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct octeon_hcd*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct octeon_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cvmx_usbcx_gintmsk ; 
 int /*<<< orphan*/  nptxfempmsk ; 
 int /*<<< orphan*/  ptxfempmsk ; 

__attribute__((used)) static void FUNC6(struct octeon_hcd *usb)
{
	if (usb->periodic.head != usb->periodic.tail) {
		union cvmx_usbcx_hptxsts tx_status;

		tx_status.u32 = FUNC5(usb,
					FUNC2(usb->index));
		if (FUNC4(usb, &usb->periodic,
					tx_status.s.ptxfspcavail))
			FUNC3(FUNC0(usb->index),
					cvmx_usbcx_gintmsk, ptxfempmsk, 1);
		else
			FUNC3(FUNC0(usb->index),
					cvmx_usbcx_gintmsk, ptxfempmsk, 0);
	}

	if (usb->nonperiodic.head != usb->nonperiodic.tail) {
		union cvmx_usbcx_gnptxsts tx_status;

		tx_status.u32 = FUNC5(usb,
					FUNC1(usb->index));
		if (FUNC4(usb, &usb->nonperiodic,
					tx_status.s.nptxfspcavail))
			FUNC3(FUNC0(usb->index),
					cvmx_usbcx_gintmsk, nptxfempmsk, 1);
		else
			FUNC3(FUNC0(usb->index),
					cvmx_usbcx_gintmsk, nptxfempmsk, 0);
	}
}