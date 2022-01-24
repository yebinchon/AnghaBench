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
struct lego_usb_tower {int /*<<< orphan*/  udev; struct lego_usb_tower* interrupt_out_buffer; struct lego_usb_tower* interrupt_in_buffer; struct lego_usb_tower* read_buffer; int /*<<< orphan*/  interrupt_out_urb; int /*<<< orphan*/  interrupt_in_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lego_usb_tower*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3 (struct lego_usb_tower *dev)
{
	/* free data structures */
	FUNC1(dev->interrupt_in_urb);
	FUNC1(dev->interrupt_out_urb);
	FUNC0 (dev->read_buffer);
	FUNC0 (dev->interrupt_in_buffer);
	FUNC0 (dev->interrupt_out_buffer);
	FUNC2(dev->udev);
	FUNC0 (dev);
}