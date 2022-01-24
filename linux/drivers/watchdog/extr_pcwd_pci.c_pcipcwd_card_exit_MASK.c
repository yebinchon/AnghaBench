#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ supports_temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  cards_found ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  pcipcwd_miscdev ; 
 int /*<<< orphan*/  pcipcwd_notifier ; 
 TYPE_1__ pcipcwd_private ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  pcipcwd_temp_miscdev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	/* Stop the timer before we leave */
	if (!nowayout)
		FUNC3();

	/* Deregister */
	FUNC0(&pcipcwd_miscdev);
	if (pcipcwd_private.supports_temp)
		FUNC0(&pcipcwd_temp_miscdev);
	FUNC4(&pcipcwd_notifier);
	FUNC2(pdev);
	FUNC1(pdev);
	cards_found--;
}