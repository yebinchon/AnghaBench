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
struct usb_memory {scalar_t__ urb_use_count; scalar_t__ vma_use_count; scalar_t__ size; int /*<<< orphan*/  dma_handle; int /*<<< orphan*/  mem; int /*<<< orphan*/  memlist; struct usb_dev_state* ps; } ;
struct usb_dev_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_memory*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct usb_memory *usbm, int *count)
{
	struct usb_dev_state *ps = usbm->ps;
	unsigned long flags;

	FUNC2(&ps->lock, flags);
	--*count;
	if (usbm->urb_use_count == 0 && usbm->vma_use_count == 0) {
		FUNC1(&usbm->memlist);
		FUNC3(&ps->lock, flags);

		FUNC4(ps->dev, usbm->size, usbm->mem,
				usbm->dma_handle);
		FUNC5(
			usbm->size + sizeof(struct usb_memory));
		FUNC0(usbm);
	} else {
		FUNC3(&ps->lock, flags);
	}
}