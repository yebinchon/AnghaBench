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
struct usb_pcwd_private {int /*<<< orphan*/  intr_dma; int /*<<< orphan*/ * intr_buffer; int /*<<< orphan*/  intr_size; int /*<<< orphan*/  udev; int /*<<< orphan*/  intr_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_pcwd_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct usb_pcwd_private *usb_pcwd)
{
	FUNC2(usb_pcwd->intr_urb);
	if (usb_pcwd->intr_buffer != NULL)
		FUNC1(usb_pcwd->udev, usb_pcwd->intr_size,
				  usb_pcwd->intr_buffer, usb_pcwd->intr_dma);
	FUNC0(usb_pcwd);
}