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
struct usb_hcd {int dummy; } ;
struct urb {int dummy; } ;
struct musb {scalar_t__ hwvers; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ MUSB_HWVERS_1800 ; 
 struct musb* FUNC0 (struct usb_hcd*) ; 
 int FUNC1 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int FUNC3 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd, struct urb *urb,
				      gfp_t mem_flags)
{
	struct musb	*musb = FUNC0(hcd);
	int ret;

	/*
	 * The DMA engine in RTL1.8 and above cannot handle
	 * DMA addresses that are not aligned to a 4 byte boundary.
	 * For such engine implemented (un)map_urb_for_dma hooks.
	 * Do not use these hooks for RTL<1.8
	 */
	if (musb->hwvers < MUSB_HWVERS_1800)
		return FUNC3(hcd, urb, mem_flags);

	ret = FUNC1(urb, mem_flags);
	if (ret)
		return ret;

	ret = FUNC3(hcd, urb, mem_flags);
	if (ret)
		FUNC2(urb);

	return ret;
}