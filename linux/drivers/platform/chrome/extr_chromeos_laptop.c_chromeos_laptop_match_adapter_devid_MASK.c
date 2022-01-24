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
typedef  scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 struct pci_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static bool FUNC3(struct device *dev, u32 devid)
{
	struct pci_dev *pdev;

	if (!FUNC0(dev))
		return false;

	pdev = FUNC2(dev);
	return devid == FUNC1(pdev);
}