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
struct config_group {int dummy; } ;
struct pci_epc_group {struct pci_epc* epc; struct config_group group; } ;
struct pci_epc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct config_group* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct pci_epc*) ; 
 int FUNC2 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC3 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct config_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct config_group*) ; 
 int /*<<< orphan*/  controllers_group ; 
 int /*<<< orphan*/  FUNC6 (struct pci_epc_group*) ; 
 struct pci_epc_group* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct pci_epc* FUNC8 (char const*) ; 
 int /*<<< orphan*/  pci_epc_type ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

struct config_group *FUNC10(const char *name)
{
	int ret;
	struct pci_epc *epc;
	struct config_group *group;
	struct pci_epc_group *epc_group;

	epc_group = FUNC7(sizeof(*epc_group), GFP_KERNEL);
	if (!epc_group) {
		ret = -ENOMEM;
		goto err;
	}

	group = &epc_group->group;

	FUNC3(group, name, &pci_epc_type);
	ret = FUNC4(controllers_group, group);
	if (ret) {
		FUNC9("failed to register configfs group for %s\n", name);
		goto err_register_group;
	}

	epc = FUNC8(name);
	if (FUNC1(epc)) {
		ret = FUNC2(epc);
		goto err_epc_get;
	}

	epc_group->epc = epc;

	return group;

err_epc_get:
	FUNC5(group);

err_register_group:
	FUNC6(epc_group);

err:
	return FUNC0(ret);
}