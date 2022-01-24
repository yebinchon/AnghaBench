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
struct TYPE_2__ {int pktsts; int bcnt; int chnum; } ;
union cvmx_usbcx_grxstsph {TYPE_1__ s; void* u32; } ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct octeon_hcd {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_SYNCW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 void* FUNC5 (struct octeon_hcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct octeon_hcd *usb)
{
	union cvmx_usbcx_grxstsph rx_status;
	int channel;
	int bytes;
	u64 address;
	u32 *ptr;

	rx_status.u32 = FUNC5(usb,
					    FUNC0(usb->index));
	/* Only read data if IN data is there */
	if (rx_status.s.pktsts != 2)
		return;
	/* Check if no data is available */
	if (!rx_status.s.bcnt)
		return;

	channel = rx_status.s.chnum;
	bytes = rx_status.s.bcnt;
	if (!bytes)
		return;

	/* Get where the DMA engine would have written this data */
	address = FUNC4(FUNC1(usb->index) +
				     channel * 8);

	ptr = FUNC3(address);
	FUNC6(FUNC1(usb->index) + channel * 8,
			    address + bytes);

	/* Loop writing the FIFO data for this packet into memory */
	while (bytes > 0) {
		*ptr++ = FUNC5(usb,
					FUNC2(channel, usb->index));
		bytes -= 4;
	}
	CVMX_SYNCW;
}