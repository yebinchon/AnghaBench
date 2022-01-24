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
struct isp1760_ep {int addr; int /*<<< orphan*/  udc; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DC_EPDIR ; 
 int /*<<< orphan*/  DC_EPINDEX ; 
 int USB_DIR_IN ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct isp1760_ep *ep, int dir)
{
	FUNC1(ep->udc, DC_EPINDEX,
			  FUNC0(ep->addr & USB_ENDPOINT_NUMBER_MASK) |
			  (dir == USB_DIR_IN ? DC_EPDIR : 0));
}