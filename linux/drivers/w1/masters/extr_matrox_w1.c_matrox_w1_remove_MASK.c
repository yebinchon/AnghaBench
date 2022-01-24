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
struct matrox_device {int /*<<< orphan*/  virt_addr; int /*<<< orphan*/  bus_master; scalar_t__ found; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct matrox_device*) ; 
 struct matrox_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct matrox_device *dev = FUNC2(pdev);

	if (dev->found) {
		FUNC3(dev->bus_master);
		FUNC0(dev->virt_addr);
	}
	FUNC1(dev);
}