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
struct smsm_entry {int /*<<< orphan*/  domain; } ;
struct qcom_smsm {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int,int /*<<< orphan*/ *,struct smsm_entry*) ; 
 int FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsm_intr ; 
 int /*<<< orphan*/  smsm_irq_ops ; 

__attribute__((used)) static int FUNC4(struct qcom_smsm *smsm,
			      struct smsm_entry *entry,
			      struct device_node *node)
{
	int ret;
	int irq;

	irq = FUNC3(node, 0);
	if (!irq) {
		FUNC0(smsm->dev, "failed to parse smsm interrupt\n");
		return -EINVAL;
	}

	ret = FUNC1(smsm->dev, irq,
					NULL, smsm_intr,
					IRQF_ONESHOT,
					"smsm", (void *)entry);
	if (ret) {
		FUNC0(smsm->dev, "failed to request interrupt\n");
		return ret;
	}

	entry->domain = FUNC2(node, 32, &smsm_irq_ops, entry);
	if (!entry->domain) {
		FUNC0(smsm->dev, "failed to add irq_domain\n");
		return -ENOMEM;
	}

	return 0;
}