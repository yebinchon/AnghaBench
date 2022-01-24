#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_error_handlers {int /*<<< orphan*/  (* reset_done ) (struct pci_dev*) ;} ;
struct pci_dev {TYPE_1__* driver; } ;
struct TYPE_2__ {struct pci_error_handlers* err_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	const struct pci_error_handlers *err_handler =
			dev->driver ? dev->driver->err_handler : NULL;

	FUNC0(dev);

	/*
	 * dev->driver->err_handler->reset_done() is protected against
	 * races with ->remove() by the device lock, which must be held by
	 * the caller.
	 */
	if (err_handler && err_handler->reset_done)
		err_handler->reset_done(dev);
}