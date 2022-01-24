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
struct msi_domain_info {int dummy; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_BUS_TI_SCI_INTA_MSI ; 
 int /*<<< orphan*/  FUNC0 (struct irq_domain*,int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC1 (struct fwnode_handle*,struct msi_domain_info*,struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct msi_domain_info*) ; 

struct irq_domain *FUNC3(struct fwnode_handle *fwnode,
						     struct msi_domain_info *info,
						     struct irq_domain *parent)
{
	struct irq_domain *domain;

	FUNC2(info);

	domain = FUNC1(fwnode, info, parent);
	if (domain)
		FUNC0(domain, DOMAIN_BUS_TI_SCI_INTA_MSI);

	return domain;
}