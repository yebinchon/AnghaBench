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
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct usb_host_interface {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct usb_host_interface*) ; 

__attribute__((used)) static struct usb_host_interface *FUNC1(
		struct usb_interface *intf)
{
	int i;

	for (i = 0; i < intf->num_altsetting; i++) {
		struct usb_host_interface *alt = &intf->altsetting[i];

		if (FUNC0(alt))
			return alt;
	}

	return NULL;
}