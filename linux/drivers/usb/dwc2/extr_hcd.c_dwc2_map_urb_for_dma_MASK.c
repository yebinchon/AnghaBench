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
struct urb {int setup_dma; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int DWC2_USB_DMA_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 int FUNC3 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd, struct urb *urb,
				gfp_t mem_flags)
{
	int ret;

	/* We assume setup_dma is always aligned; warn if not */
	FUNC0(urb->setup_dma &&
		     (urb->setup_dma & (DWC2_USB_DMA_ALIGN - 1)));

	ret = FUNC1(urb, mem_flags);
	if (ret)
		return ret;

	ret = FUNC3(hcd, urb, mem_flags);
	if (ret)
		FUNC2(urb);

	return ret;
}