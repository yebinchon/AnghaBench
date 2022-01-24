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
struct tb {int dummy; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct tb* FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct tb*) ; 
 struct pci_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct pci_dev *pdev = FUNC2(dev);
	struct tb *tb = FUNC0(pdev);

	return FUNC1(tb);
}