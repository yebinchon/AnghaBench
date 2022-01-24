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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  temp_miscdev ; 
 int type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdtpci_miscdev ; 
 int /*<<< orphan*/  wdtpci_notifier ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	/* here we assume only one device will ever have
	 * been picked up and registered by probe function */
	FUNC1(&wdtpci_miscdev);
	if (type == 501)
		FUNC1(&temp_miscdev);
	FUNC4(&wdtpci_notifier);
	FUNC0(irq, &wdtpci_miscdev);
	FUNC3(pdev, 2);
	FUNC2(pdev);
	dev_count--;
}