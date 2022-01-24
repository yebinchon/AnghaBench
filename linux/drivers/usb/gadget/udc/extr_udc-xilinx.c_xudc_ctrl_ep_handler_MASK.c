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
typedef  int u32 ;
struct xusb_udc {int dummy; } ;

/* Variables and functions */
 int XUSB_STATUS_FIFO_BUFF_FREE_MASK ; 
 int XUSB_STATUS_FIFO_BUFF_RDY_MASK ; 
 int XUSB_STATUS_SETUP_PACKET_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct xusb_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct xusb_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct xusb_udc*) ; 

__attribute__((used)) static void FUNC3(struct xusb_udc *udc, u32 intrstatus)
{

	if (intrstatus & XUSB_STATUS_SETUP_PACKET_MASK) {
		FUNC2(udc);
	} else {
		if (intrstatus & XUSB_STATUS_FIFO_BUFF_RDY_MASK)
			FUNC1(udc);
		else if (intrstatus & XUSB_STATUS_FIFO_BUFF_FREE_MASK)
			FUNC0(udc);
	}
}