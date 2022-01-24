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
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int FUNC0 (struct of_phandle_args*) ; 
 struct irq_domain* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,int,struct of_phandle_args*) ; 

int FUNC3(struct device_node *dev, int index)
{
	int rc;
	struct of_phandle_args oirq;
	struct irq_domain *domain;

	rc = FUNC2(dev, index, &oirq);
	if (rc)
		return rc;

	domain = FUNC1(oirq.np);
	if (!domain)
		return -EPROBE_DEFER;

	return FUNC0(&oirq);
}