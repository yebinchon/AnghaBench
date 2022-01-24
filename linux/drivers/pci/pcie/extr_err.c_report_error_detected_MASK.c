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
struct pci_error_handlers {int /*<<< orphan*/  (* error_detected ) (struct pci_dev*,int) ;} ;
struct pci_dev {scalar_t__ hdr_type; int /*<<< orphan*/  dev; TYPE_1__* driver; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;
typedef  enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;
struct TYPE_2__ {struct pci_error_handlers* err_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_NONE ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NO_AER_DRIVER ; 
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev,
				 enum pci_channel_state state,
				 enum pci_ers_result *result)
{
	pci_ers_result_t vote;
	const struct pci_error_handlers *err_handler;

	FUNC0(&dev->dev);
	if (!FUNC3(dev, state) ||
		!dev->driver ||
		!dev->driver->err_handler ||
		!dev->driver->err_handler->error_detected) {
		/*
		 * If any device in the subtree does not have an error_detected
		 * callback, PCI_ERS_RESULT_NO_AER_DRIVER prevents subsequent
		 * error callbacks of "any" device in the subtree, and will
		 * exit in the disconnected error state.
		 */
		if (dev->hdr_type != PCI_HEADER_TYPE_BRIDGE)
			vote = PCI_ERS_RESULT_NO_AER_DRIVER;
		else
			vote = PCI_ERS_RESULT_NONE;
	} else {
		err_handler = dev->driver->err_handler;
		vote = err_handler->error_detected(dev, state);
	}
	FUNC4(dev, vote);
	*result = FUNC2(*result, vote);
	FUNC1(&dev->dev);
	return 0;
}