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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ast_vhub_ep {TYPE_1__* vhub; } ;
struct TYPE_2__ {scalar_t__ wakeup_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*) ; 
 int USB_DEVICE_REMOTE_WAKEUP ; 
 int USB_DEVICE_SELF_POWERED ; 
 int FUNC1 (struct ast_vhub_ep*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ast_vhub_ep *ep,
				   u16 wIndex, u16 wValue)
{
	u8 st0;

	FUNC0(ep, "GET_STATUS(dev)\n");

	/*
	 * Mark it as self-powered, I doubt the BMC is powered off
	 * the USB bus ...
	 */
	st0 = 1 << USB_DEVICE_SELF_POWERED;

	/*
	 * Need to double check how remote wakeup actually works
	 * on that chip and what triggers it.
	 */
	if (ep->vhub->wakeup_en)
		st0 |= 1 << USB_DEVICE_REMOTE_WAKEUP;

	return FUNC1(ep, st0, 0);
}