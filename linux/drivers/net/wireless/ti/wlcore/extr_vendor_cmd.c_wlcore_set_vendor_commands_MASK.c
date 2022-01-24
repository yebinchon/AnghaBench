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
struct wiphy {void* n_vendor_events; void* vendor_events; void* n_vendor_commands; void* vendor_commands; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* wlcore_vendor_commands ; 
 void* wlcore_vendor_events ; 

void FUNC1(struct wiphy *wiphy)
{
	wiphy->vendor_commands = wlcore_vendor_commands;
	wiphy->n_vendor_commands = FUNC0(wlcore_vendor_commands);
	wiphy->vendor_events = wlcore_vendor_events;
	wiphy->n_vendor_events = FUNC0(wlcore_vendor_events);
}