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
struct acpi_memory_device {struct acpi_device* device; int /*<<< orphan*/  res_list; } ;
struct acpi_device {struct acpi_memory_device* driver_data; } ;

/* Variables and functions */
 char* ACPI_MEMORY_DEVICE_CLASS ; 
 char* ACPI_MEMORY_DEVICE_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  acpi_hotmem_initialized ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_memory_device*) ; 
 int FUNC4 (struct acpi_memory_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_memory_device*) ; 
 struct acpi_memory_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC8 (struct acpi_memory_device*) ; 

__attribute__((used)) static int FUNC9(struct acpi_device *device)
{
	int result;
	struct acpi_memory_device *mem_device = NULL;


	if (!device)
		return -EINVAL;

	mem_device = FUNC6(sizeof(struct acpi_memory_device), GFP_KERNEL);
	if (!mem_device)
		return -ENOMEM;

	FUNC0(&mem_device->res_list);
	mem_device->device = device;
	FUNC7(FUNC2(device), "%s", ACPI_MEMORY_DEVICE_NAME);
	FUNC7(FUNC1(device), "%s", ACPI_MEMORY_DEVICE_CLASS);
	device->driver_data = mem_device;

	/* Get the range from the _CRS */
	result = FUNC4(mem_device);
	if (result) {
		FUNC5(mem_device);
		return result;
	}

	/*
	 * For booting existed memory devices, early boot code has recognized
	 * memory area by EFI/E820. If DSDT shows these memory devices on boot,
	 * hotplug is not necessary for them.
	 * For hot-added memory devices during runtime, it need hypercall to
	 * Xen hypervisor to add memory.
	 */
	if (!acpi_hotmem_initialized)
		return 0;

	if (!FUNC3(mem_device))
		result = FUNC8(mem_device);

	return result;
}