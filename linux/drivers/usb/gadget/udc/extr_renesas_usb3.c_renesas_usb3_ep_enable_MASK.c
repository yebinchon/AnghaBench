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
struct usb_endpoint_descriptor {int dummy; } ;
struct renesas_usb3_ep {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct renesas_usb3_ep*,struct usb_endpoint_descriptor const*) ; 
 struct renesas_usb3_ep* FUNC1 (struct usb_ep*) ; 

__attribute__((used)) static int FUNC2(struct usb_ep *_ep,
				  const struct usb_endpoint_descriptor *desc)
{
	struct renesas_usb3_ep *usb3_ep = FUNC1(_ep);

	return FUNC0(usb3_ep, desc);
}