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
 int FUNC0 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int FUNC2 (struct usb_hcd*,struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_hcd *hcd, struct urb *urb,
				  gfp_t mem_flags)
{
	int ret;

	ret = FUNC0(urb, mem_flags);
	if (ret)
		return ret;

	ret = FUNC2(hcd, urb, mem_flags);
	if (ret)
		FUNC1(urb);

	return ret;
}