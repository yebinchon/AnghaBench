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
struct pci_epc_group {int start; struct pci_epc* epc; } ;
struct pci_epc {int /*<<< orphan*/  dev; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (char const*,int*) ; 
 int FUNC2 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_epc*) ; 
 struct pci_epc_group* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item, const char *page,
				   size_t len)
{
	int ret;
	bool start;
	struct pci_epc *epc;
	struct pci_epc_group *epc_group = FUNC4(item);

	epc = epc_group->epc;

	ret = FUNC1(page, &start);
	if (ret)
		return ret;

	if (!start) {
		FUNC3(epc);
		return len;
	}

	ret = FUNC2(epc);
	if (ret) {
		FUNC0(&epc->dev, "failed to start endpoint controller\n");
		return -EINVAL;
	}

	epc_group->start = start;

	return len;
}