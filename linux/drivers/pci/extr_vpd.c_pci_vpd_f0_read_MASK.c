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
struct pci_dev {int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,size_t,void*) ; 

__attribute__((used)) static ssize_t FUNC5(struct pci_dev *dev, loff_t pos, size_t count,
			       void *arg)
{
	struct pci_dev *tdev = FUNC3(dev->bus,
					    FUNC0(FUNC1(dev->devfn), 0));
	ssize_t ret;

	if (!tdev)
		return -ENODEV;

	ret = FUNC4(tdev, pos, count, arg);
	FUNC2(tdev);
	return ret;
}