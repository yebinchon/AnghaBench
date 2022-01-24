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
struct ssb_bus {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct ssb_bus* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ssb_bus*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev)
{
	struct ssb_bus *ssb = FUNC2(dev);

	FUNC5(ssb);
	FUNC3(dev);
	FUNC1(dev);
	FUNC0(ssb);
	FUNC4(dev, NULL);
}