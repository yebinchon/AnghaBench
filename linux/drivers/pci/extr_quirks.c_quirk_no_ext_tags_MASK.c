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
struct pci_host_bridge {int no_ext_tags; int /*<<< orphan*/  bus; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  pci_configure_extended_tags ; 
 struct pci_host_bridge* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct pci_host_bridge *bridge = FUNC0(pdev->bus);

	if (!bridge)
		return;

	bridge->no_ext_tags = 1;
	FUNC1(pdev, "disabling Extended Tags (this device can't handle them)\n");

	FUNC2(bridge->bus, pci_configure_extended_tags, NULL);
}