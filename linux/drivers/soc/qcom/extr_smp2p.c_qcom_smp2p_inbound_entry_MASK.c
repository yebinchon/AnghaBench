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
struct smp2p_entry {int /*<<< orphan*/  domain; } ;
struct qcom_smp2p {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int,int /*<<< orphan*/ *,struct smp2p_entry*) ; 
 int /*<<< orphan*/  smp2p_irq_ops ; 

__attribute__((used)) static int FUNC2(struct qcom_smp2p *smp2p,
				    struct smp2p_entry *entry,
				    struct device_node *node)
{
	entry->domain = FUNC1(node, 32, &smp2p_irq_ops, entry);
	if (!entry->domain) {
		FUNC0(smp2p->dev, "failed to add irq_domain\n");
		return -ENOMEM;
	}

	return 0;
}