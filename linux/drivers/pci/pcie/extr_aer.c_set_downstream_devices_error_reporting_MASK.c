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
struct pci_dev {int /*<<< orphan*/  subordinate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct pci_dev*,int*),int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev,
						   bool enable)
{
	FUNC1(dev, &enable);

	if (!dev->subordinate)
		return;
	FUNC0(dev->subordinate, set_device_error_reporting, &enable);
}