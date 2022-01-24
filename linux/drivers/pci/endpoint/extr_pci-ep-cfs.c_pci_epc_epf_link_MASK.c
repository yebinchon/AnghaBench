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
typedef  scalar_t__ u32 ;
struct pci_epf_group {struct pci_epf* epf; } ;
struct pci_epf {scalar_t__ func_no; } ;
struct pci_epc_group {int /*<<< orphan*/  function_num_map; struct pci_epc* epc; } ;
struct pci_epc {int dummy; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 scalar_t__ BITS_PER_LONG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (struct pci_epc*,struct pci_epf*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_epc*,struct pci_epf*) ; 
 int FUNC4 (struct pci_epf*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct pci_epc_group* FUNC6 (struct config_item*) ; 
 struct pci_epf_group* FUNC7 (struct config_item*) ; 

__attribute__((used)) static int FUNC8(struct config_item *epc_item,
			    struct config_item *epf_item)
{
	int ret;
	u32 func_no = 0;
	struct pci_epf_group *epf_group = FUNC7(epf_item);
	struct pci_epc_group *epc_group = FUNC6(epc_item);
	struct pci_epc *epc = epc_group->epc;
	struct pci_epf *epf = epf_group->epf;

	func_no = FUNC1(&epc_group->function_num_map,
				      BITS_PER_LONG);
	if (func_no >= BITS_PER_LONG)
		return -EINVAL;

	FUNC5(func_no, &epc_group->function_num_map);
	epf->func_no = func_no;

	ret = FUNC2(epc, epf);
	if (ret)
		goto err_add_epf;

	ret = FUNC4(epf);
	if (ret)
		goto err_epf_bind;

	return 0;

err_epf_bind:
	FUNC3(epc, epf);

err_add_epf:
	FUNC0(func_no, &epc_group->function_num_map);

	return ret;
}