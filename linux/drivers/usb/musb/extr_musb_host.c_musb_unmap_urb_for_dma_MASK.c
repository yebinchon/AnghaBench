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

/* Variables and functions */
 scalar_t__ MUSB_HWVERS_1800 ; 
 struct musb* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hcd*,struct urb*) ; 

__attribute__((used)) static void FUNC3(struct usb_hcd *hcd, struct urb *urb)
{
	struct musb	*musb = FUNC0(hcd);

	FUNC2(hcd, urb);

	/* Do not use this hook for RTL<1.8 (see description above) */
	if (musb->hwvers < MUSB_HWVERS_1800)
		return;

	FUNC1(urb);
}