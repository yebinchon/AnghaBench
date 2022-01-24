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
struct pci_epf_driver {int /*<<< orphan*/  epf_group; struct pci_epf_device_id* id_table; } ;
struct pci_epf_device_id {scalar_t__* name; } ;
struct config_group {int /*<<< orphan*/  group_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_ENDPOINT_CONFIGFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct config_group*) ; 
 int FUNC3 (struct config_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct config_group* FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  pci_epf_mutex ; 
 int /*<<< orphan*/  FUNC8 (struct pci_epf_driver*) ; 

__attribute__((used)) static int FUNC9(struct pci_epf_driver *driver)
{
	struct config_group *group;
	const struct pci_epf_device_id *id;

	if (!FUNC1(CONFIG_PCI_ENDPOINT_CONFIGFS))
		return 0;

	FUNC0(&driver->epf_group);

	id = driver->id_table;
	while (id->name[0]) {
		group = FUNC7(id->name);
		if (FUNC2(group)) {
			FUNC8(driver);
			return FUNC3(group);
		}

		FUNC5(&pci_epf_mutex);
		FUNC4(&group->group_entry, &driver->epf_group);
		FUNC6(&pci_epf_mutex);
		id++;
	}

	return 0;
}