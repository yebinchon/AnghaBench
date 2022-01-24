#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  driver_attr_irq_handler_state ; 
 int /*<<< orphan*/  driver_attr_irq_handlers ; 
 int /*<<< orphan*/  driver_attr_new_slot ; 
 int /*<<< orphan*/  driver_attr_permissive ; 
 int /*<<< orphan*/  driver_attr_quirks ; 
 int /*<<< orphan*/  driver_attr_remove_slot ; 
 int /*<<< orphan*/  driver_attr_slots ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__ xen_pcibk_pci_driver ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0(&xen_pcibk_pci_driver.driver, &driver_attr_new_slot);
	FUNC0(&xen_pcibk_pci_driver.driver,
			   &driver_attr_remove_slot);
	FUNC0(&xen_pcibk_pci_driver.driver, &driver_attr_slots);
	FUNC0(&xen_pcibk_pci_driver.driver, &driver_attr_quirks);
	FUNC0(&xen_pcibk_pci_driver.driver,
			   &driver_attr_permissive);
	FUNC0(&xen_pcibk_pci_driver.driver,
			   &driver_attr_irq_handlers);
	FUNC0(&xen_pcibk_pci_driver.driver,
			   &driver_attr_irq_handler_state);
	FUNC1(&xen_pcibk_pci_driver);
}