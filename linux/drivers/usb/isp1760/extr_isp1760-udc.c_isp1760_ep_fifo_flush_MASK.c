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
struct usb_ep {int dummy; } ;
struct isp1760_udc {int /*<<< orphan*/  lock; } ;
struct isp1760_ep {struct isp1760_udc* udc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_CLBUF ; 
 int /*<<< orphan*/  DC_CTRLFUNC ; 
 struct isp1760_ep* FUNC0 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1760_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp1760_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct usb_ep *ep)
{
	struct isp1760_ep *uep = FUNC0(ep);
	struct isp1760_udc *udc = uep->udc;
	unsigned long flags;

	FUNC3(&udc->lock, flags);

	FUNC1(uep);

	/*
	 * Set the CLBUF bit twice to flush both buffers in case double
	 * buffering is enabled.
	 */
	FUNC2(udc, DC_CTRLFUNC, DC_CLBUF);
	FUNC2(udc, DC_CTRLFUNC, DC_CLBUF);

	FUNC4(&udc->lock, flags);
}