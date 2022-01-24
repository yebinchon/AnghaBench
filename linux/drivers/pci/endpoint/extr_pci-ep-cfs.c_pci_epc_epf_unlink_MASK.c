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
struct pci_epf_group {struct pci_epf* epf; } ;
struct pci_epf {int /*<<< orphan*/  func_no; } ;
struct pci_epc_group {int /*<<< orphan*/  function_num_map; struct pci_epc* epc; int /*<<< orphan*/  start; } ;
struct pci_epc {int dummy; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_epc*,struct pci_epf*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_epf*) ; 
 struct pci_epc_group* FUNC4 (struct config_item*) ; 
 struct pci_epf_group* FUNC5 (struct config_item*) ; 

__attribute__((used)) static void FUNC6(struct config_item *epc_item,
			       struct config_item *epf_item)
{
	struct pci_epc *epc;
	struct pci_epf *epf;
	struct pci_epf_group *epf_group = FUNC5(epf_item);
	struct pci_epc_group *epc_group = FUNC4(epc_item);

	FUNC0(epc_group->start);

	epc = epc_group->epc;
	epf = epf_group->epf;
	FUNC1(epf->func_no, &epc_group->function_num_map);
	FUNC3(epf);
	FUNC2(epc, epf);
}