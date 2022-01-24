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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {struct pci_bus* subordinate; TYPE_1__* bus; } ;
struct pci_bus {int dummy; } ;
typedef  scalar_t__ pci_ers_result_t ;
typedef  enum pci_channel_state { ____Placeholder_pci_channel_state } pci_channel_state ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 scalar_t__ PCI_ERS_RESULT_CAN_RECOVER ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 scalar_t__ PCI_ERS_RESULT_NEED_RESET ; 
 scalar_t__ PCI_ERS_RESULT_RECOVERED ; 
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int pci_channel_io_frozen ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_bus*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  report_frozen_detected ; 
 int /*<<< orphan*/  report_mmio_enabled ; 
 int /*<<< orphan*/  report_normal_detected ; 
 int /*<<< orphan*/  report_resume ; 
 int /*<<< orphan*/  report_slot_reset ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 

void FUNC8(struct pci_dev *dev, enum pci_channel_state state,
		      u32 service)
{
	pci_ers_result_t status = PCI_ERS_RESULT_CAN_RECOVER;
	struct pci_bus *bus;

	/*
	 * Error recovery runs on all subordinates of the first downstream port.
	 * If the downstream port detected the error, it is cleared at the end.
	 */
	if (!(FUNC4(dev) == PCI_EXP_TYPE_ROOT_PORT ||
	      FUNC4(dev) == PCI_EXP_TYPE_DOWNSTREAM))
		dev = dev->bus->self;
	bus = dev->subordinate;

	FUNC2(dev, "broadcast error_detected message\n");
	if (state == pci_channel_io_frozen)
		FUNC6(bus, report_frozen_detected, &status);
	else
		FUNC6(bus, report_normal_detected, &status);

	if (state == pci_channel_io_frozen &&
	    FUNC7(dev, service) != PCI_ERS_RESULT_RECOVERED)
		goto failed;

	if (status == PCI_ERS_RESULT_CAN_RECOVER) {
		status = PCI_ERS_RESULT_RECOVERED;
		FUNC2(dev, "broadcast mmio_enabled message\n");
		FUNC6(bus, report_mmio_enabled, &status);
	}

	if (status == PCI_ERS_RESULT_NEED_RESET) {
		/*
		 * TODO: Should call platform-specific
		 * functions to reset slot before calling
		 * drivers' slot_reset callbacks?
		 */
		status = PCI_ERS_RESULT_RECOVERED;
		FUNC2(dev, "broadcast slot_reset message\n");
		FUNC6(bus, report_slot_reset, &status);
	}

	if (status != PCI_ERS_RESULT_RECOVERED)
		goto failed;

	FUNC2(dev, "broadcast resume message\n");
	FUNC6(bus, report_resume, &status);

	FUNC0(dev);
	FUNC1(dev);
	FUNC3(dev, "AER: Device recovery successful\n");
	return;

failed:
	FUNC5(dev, PCI_ERS_RESULT_DISCONNECT);

	/* TODO: Should kernel panic here? */
	FUNC3(dev, "AER: Device recovery failed\n");
}