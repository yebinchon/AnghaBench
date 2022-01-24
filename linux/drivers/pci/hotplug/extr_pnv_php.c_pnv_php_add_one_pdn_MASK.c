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
struct pci_dn {int dummy; } ;
struct pci_controller {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pci_dn* FUNC1 (struct pci_controller*,struct device_node*) ; 

__attribute__((used)) static void *FUNC2(struct device_node *dn, void *data)
{
	struct pci_controller *hose = (struct pci_controller *)data;
	struct pci_dn *pdn;

	pdn = FUNC1(hose, dn);
	if (!pdn)
		return FUNC0(-ENOMEM);

	return NULL;
}