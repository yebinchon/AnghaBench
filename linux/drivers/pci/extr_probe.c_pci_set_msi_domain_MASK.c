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
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* bus; } ;
struct irq_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct irq_domain* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct irq_domain*) ; 
 struct irq_domain* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	struct irq_domain *d;

	/*
	 * If the platform or firmware interfaces cannot supply a
	 * device-specific MSI domain, then inherit the default domain
	 * from the host bridge itself.
	 */
	d = FUNC2(dev);
	if (!d)
		d = FUNC0(&dev->bus->dev);

	FUNC1(&dev->dev, d);
}