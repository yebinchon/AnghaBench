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
typedef  int u32 ;
struct usb_endpoint_descriptor {int dummy; } ;
struct renesas_usb3_ep {int rammap_val; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (int const) ; 
 int const FUNC2 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static u32 FUNC3(struct renesas_usb3_ep *usb3_ep,
				const struct usb_endpoint_descriptor *desc)
{
	int i;
	static const u32 max_packet_array[] = {8, 16, 32, 64, 512};
	u32 mpkt = FUNC1(1024);

	for (i = 0; i < FUNC0(max_packet_array); i++) {
		if (FUNC2(desc) <= max_packet_array[i])
			mpkt = FUNC1(max_packet_array[i]);
	}

	return usb3_ep->rammap_val | mpkt;
}