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
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct irq_domain* FUNC0 (int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC3 (struct device_node*) ; 

__attribute__((used)) static struct irq_domain *FUNC4(struct device_node *np)
{
	struct device_node *parent;
	struct irq_domain *domain;

	if (!FUNC2(np, "interrupt-parent", NULL))
		return NULL;

	parent = FUNC3(np);
	if (!parent)
		return FUNC0(-ENXIO);

	domain = FUNC1(parent);
	if (!domain)
		/* domain not registered yet */
		return FUNC0(-EPROBE_DEFER);

	return domain;
}