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
struct TYPE_2__ {int bMaxBurst; int /*<<< orphan*/  bmAttributes; } ;
struct usb_host_endpoint {TYPE_1__ ss_ep_comp; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_host_endpoint* FUNC1 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC2(struct usb_device *udev, int pipe)
{
	struct usb_host_endpoint *ep = FUNC1(udev, pipe);

	return FUNC0(ep->ss_ep_comp.bmAttributes)
		* (1 + ep->ss_ep_comp.bMaxBurst);
}