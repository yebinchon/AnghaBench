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
struct usbip_header_basic {void* ep; void* direction; void* devid; void* seqnum; void* command; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(struct usbip_header_basic *base, int send)
{
	if (send) {
		base->command	= FUNC1(base->command);
		base->seqnum	= FUNC1(base->seqnum);
		base->devid	= FUNC1(base->devid);
		base->direction	= FUNC1(base->direction);
		base->ep	= FUNC1(base->ep);
	} else {
		base->command	= FUNC0(base->command);
		base->seqnum	= FUNC0(base->seqnum);
		base->devid	= FUNC0(base->devid);
		base->direction	= FUNC0(base->direction);
		base->ep	= FUNC0(base->ep);
	}
}