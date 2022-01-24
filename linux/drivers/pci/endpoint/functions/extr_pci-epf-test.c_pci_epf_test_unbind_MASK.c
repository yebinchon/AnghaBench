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
struct pci_epf_test {scalar_t__* reg; int /*<<< orphan*/  cmd_handler; } ;
struct pci_epf_bar {int dummy; } ;
struct pci_epf {int /*<<< orphan*/  func_no; struct pci_epf_bar* bar; struct pci_epc* epc; } ;
struct pci_epc {int dummy; } ;

/* Variables and functions */
 int BAR_0 ; 
 int BAR_5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pci_epf_test* FUNC1 (struct pci_epf*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_epc*,int /*<<< orphan*/ ,struct pci_epf_bar*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_epf*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct pci_epf *epf)
{
	struct pci_epf_test *epf_test = FUNC1(epf);
	struct pci_epc *epc = epf->epc;
	struct pci_epf_bar *epf_bar;
	int bar;

	FUNC0(&epf_test->cmd_handler);
	FUNC3(epc);
	for (bar = BAR_0; bar <= BAR_5; bar++) {
		epf_bar = &epf->bar[bar];

		if (epf_test->reg[bar]) {
			FUNC2(epc, epf->func_no, epf_bar);
			FUNC4(epf, epf_test->reg[bar], bar);
		}
	}
}