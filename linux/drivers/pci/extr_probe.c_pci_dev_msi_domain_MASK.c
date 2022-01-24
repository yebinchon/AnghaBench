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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct irq_domain {int dummy; } ;

/* Variables and functions */
 struct irq_domain* FUNC0 (int /*<<< orphan*/ *) ; 
 struct irq_domain* FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static struct irq_domain *FUNC2(struct pci_dev *dev)
{
	struct irq_domain *d;

	/*
	 * If a domain has been set through the pcibios_add_device()
	 * callback, then this is the one (platform code knows best).
	 */
	d = FUNC0(&dev->dev);
	if (d)
		return d;

	/*
	 * Let's see if we have a firmware interface able to provide
	 * the domain.
	 */
	d = FUNC1(dev);
	if (d)
		return d;

	return NULL;
}