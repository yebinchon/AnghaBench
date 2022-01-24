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
struct TYPE_2__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  fwnode; } ;
struct hv_pcibus_device {scalar_t__ state; TYPE_1__ sysdata; int /*<<< orphan*/  wq; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  resources_for_children; int /*<<< orphan*/  cfg_addr; int /*<<< orphan*/  pci_bus; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_pcibus_device*) ; 
 struct hv_pcibus_device* FUNC3 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hv_pcibus_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hv_pcibus_device*) ; 
 scalar_t__ hv_pcibus_installed ; 
 scalar_t__ hv_pcibus_removed ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct hv_pcibus_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct hv_device *hdev)
{
	struct hv_pcibus_device *hbus;

	hbus = FUNC3(hdev);
	if (hbus->state == hv_pcibus_installed) {
		/* Remove the bus from PCI's point of view. */
		FUNC12();
		FUNC14(hbus->pci_bus);
		FUNC6(hbus);
		FUNC13(hbus->pci_bus);
		FUNC15();
		hbus->state = hv_pcibus_removed;
	}

	FUNC4(hdev);

	FUNC17(hdev->channel);

	FUNC8(hbus->cfg_addr);
	FUNC2(hbus);
	FUNC11(&hbus->resources_for_children);
	FUNC5(hbus);
	FUNC10(hbus->irq_domain);
	FUNC9(hbus->sysdata.fwnode);
	FUNC16(hbus);
	FUNC18(&hbus->remove_event);
	FUNC0(hbus->wq);

	FUNC7(hbus->sysdata.domain);

	FUNC1((unsigned long)hbus);
	return 0;
}