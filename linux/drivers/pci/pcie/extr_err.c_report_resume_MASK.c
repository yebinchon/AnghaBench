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
struct pci_error_handlers {int /*<<< orphan*/  (* resume ) (struct pci_dev*) ;} ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* driver; } ;
struct TYPE_2__ {struct pci_error_handlers* err_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev, void *data)
{
	const struct pci_error_handlers *err_handler;

	FUNC0(&dev->dev);
	if (!FUNC2(dev, pci_channel_io_normal) ||
		!dev->driver ||
		!dev->driver->err_handler ||
		!dev->driver->err_handler->resume)
		goto out;

	err_handler = dev->driver->err_handler;
	err_handler->resume(dev);
out:
	FUNC3(dev, PCI_ERS_RESULT_RECOVERED);
	FUNC1(&dev->dev);
	return 0;
}