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
struct usb_devmap {int dummy; } ;
struct usb_bus {int devnum_next; int busnum; int /*<<< orphan*/  devnum_next_mutex; scalar_t__ bandwidth_isoc_reqs; scalar_t__ bandwidth_int_reqs; scalar_t__ bandwidth_allocated; int /*<<< orphan*/ * root_hub; int /*<<< orphan*/  devmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (struct usb_bus *bus)
{
	FUNC0 (&bus->devmap, 0, sizeof(struct usb_devmap));

	bus->devnum_next = 1;

	bus->root_hub = NULL;
	bus->busnum = -1;
	bus->bandwidth_allocated = 0;
	bus->bandwidth_int_reqs  = 0;
	bus->bandwidth_isoc_reqs = 0;
	FUNC1(&bus->devnum_next_mutex);
}