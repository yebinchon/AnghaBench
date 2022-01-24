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
struct pci_error_handlers {int /*<<< orphan*/  (* mmio_enabled ) (struct pci_dev*) ;} ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* driver; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
struct TYPE_2__ {struct pci_error_handlers* err_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, void *data)
{
	pci_ers_result_t vote, *result = data;
	const struct pci_error_handlers *err_handler;

	FUNC0(&dev->dev);
	if (!dev->driver ||
		!dev->driver->err_handler ||
		!dev->driver->err_handler->mmio_enabled)
		goto out;

	err_handler = dev->driver->err_handler;
	vote = err_handler->mmio_enabled(dev);
	*result = FUNC2(*result, vote);
out:
	FUNC1(&dev->dev);
	return 0;
}