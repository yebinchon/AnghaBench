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
struct usb_ep {unsigned int maxpacket_limit; unsigned int maxpacket; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_ep*,int /*<<< orphan*/ ) ; 

void FUNC1(struct usb_ep *ep,
					      unsigned maxpacket_limit)
{
	ep->maxpacket_limit = maxpacket_limit;
	ep->maxpacket = maxpacket_limit;

	FUNC0(ep, 0);
}