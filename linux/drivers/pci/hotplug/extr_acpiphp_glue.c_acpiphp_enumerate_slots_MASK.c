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
struct pci_bus {int /*<<< orphan*/  dev; int /*<<< orphan*/  self; int /*<<< orphan*/  bridge; } ;
struct acpiphp_root_context {int /*<<< orphan*/  hp; struct acpiphp_bridge* root_bridge; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct acpiphp_context {TYPE_1__ func; struct acpiphp_bridge* bridge; } ;
struct acpiphp_bridge {int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  list; struct acpiphp_context* context; struct pci_bus* pci_bus; int /*<<< orphan*/  ref; int /*<<< orphan*/  slots; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpiphp_bridge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpiphp_add_context ; 
 scalar_t__ acpiphp_disabled ; 
 struct acpiphp_context* FUNC8 (struct acpi_device*) ; 
 int /*<<< orphan*/  bridge_list ; 
 int /*<<< orphan*/  bridge_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct acpiphp_bridge*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct acpiphp_bridge*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC21 (struct acpiphp_bridge*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

void FUNC23(struct pci_bus *bus)
{
	struct acpiphp_bridge *bridge;
	struct acpi_device *adev;
	acpi_handle handle;
	acpi_status status;

	if (acpiphp_disabled)
		return;

	adev = FUNC0(bus->bridge);
	if (!adev)
		return;

	handle = adev->handle;
	bridge = FUNC14(sizeof(struct acpiphp_bridge), GFP_KERNEL);
	if (!bridge)
		return;

	FUNC2(&bridge->slots);
	FUNC13(&bridge->ref);
	bridge->pci_dev = FUNC18(bus->self);
	bridge->pci_bus = bus;

	/*
	 * Grab a ref to the subordinate PCI bus in case the bus is
	 * removed via PCI core logical hotplug. The ref pins the bus
	 * (which we access during module unload).
	 */
	FUNC11(&bus->dev);

	FUNC4();
	if (FUNC20(bridge->pci_bus)) {
		struct acpiphp_root_context *root_context;

		root_context = FUNC14(sizeof(*root_context), GFP_KERNEL);
		if (!root_context)
			goto err;

		root_context->root_bridge = bridge;
		FUNC5(adev, &root_context->hp);
	} else {
		struct acpiphp_context *context;

		/*
		 * This bridge should have been registered as a hotplug function
		 * under its parent, so the context should be there, unless the
		 * parent is going to be handled by pciehp, in which case this
		 * bridge is not interesting to us either.
		 */
		context = FUNC8(adev);
		if (!context)
			goto err;

		bridge->context = context;
		context->bridge = bridge;
		/* Get a reference to the parent bridge. */
		FUNC10(context->func.parent);
	}
	FUNC6();

	/* Must be added to the list prior to calling acpiphp_add_context(). */
	FUNC16(&bridge_mutex);
	FUNC15(&bridge->list, &bridge_list);
	FUNC17(&bridge_mutex);

	/* register all slot objects under this bridge */
	status = FUNC7(ACPI_TYPE_DEVICE, handle, 1,
				     acpiphp_add_context, NULL, bridge, NULL);
	if (FUNC1(status)) {
		FUNC3(handle, "failed to register slots\n");
		FUNC9(bridge);
		FUNC21(bridge);
	}
	return;

 err:
	FUNC6();
	FUNC22(&bus->dev);
	FUNC19(bridge->pci_dev);
	FUNC12(bridge);
}