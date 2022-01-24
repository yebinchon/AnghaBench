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
struct usb_endpoint_descriptor {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct usb_endpoint_descriptor*) ; 
 int FUNC1 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC2 (struct usb_endpoint_descriptor*) ; 

unsigned int FUNC3(struct usb_endpoint_descriptor *desc)
{
	unsigned int index;
	if (FUNC2(desc))
		index = (unsigned int) (FUNC1(desc)*2);
	else
		index = (unsigned int) (FUNC1(desc)*2) +
			(FUNC0(desc) ? 1 : 0) - 1;
	return index;
}