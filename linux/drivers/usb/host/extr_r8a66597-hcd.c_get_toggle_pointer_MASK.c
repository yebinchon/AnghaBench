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
struct r8a66597_device {unsigned short ep_in_toggle; unsigned short ep_out_toggle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static unsigned short *FUNC1(struct r8a66597_device *dev,
					  int urb_pipe)
{
	if (!dev)
		return NULL;

	return FUNC0(urb_pipe) ? &dev->ep_in_toggle : &dev->ep_out_toggle;
}