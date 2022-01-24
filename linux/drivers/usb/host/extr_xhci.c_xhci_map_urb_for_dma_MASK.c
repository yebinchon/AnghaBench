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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct urb*) ; 

__attribute__((used)) static int FUNC2(struct usb_hcd *hcd, struct urb *urb,
				gfp_t mem_flags)
{
	if (FUNC1(urb))
		return 0;

	return FUNC0(hcd, urb, mem_flags);
}