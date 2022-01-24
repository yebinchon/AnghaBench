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
struct urb {int /*<<< orphan*/  pipe; } ;
struct max3421_hcd {int /*<<< orphan*/  hien; scalar_t__ curr_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX3421_HI_RCVDAV_BIT ; 
 int FUNC1 (int) ; 
 struct max3421_hcd* FUNC2 (struct usb_hcd*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct usb_hcd *hcd, struct urb *urb)
{
	struct max3421_hcd *max3421_hcd = FUNC2(hcd);
	int epnum = FUNC3(urb->pipe);

	max3421_hcd->curr_len = 0;
	max3421_hcd->hien |= FUNC0(MAX3421_HI_RCVDAV_BIT);
	return FUNC1(epnum);
}