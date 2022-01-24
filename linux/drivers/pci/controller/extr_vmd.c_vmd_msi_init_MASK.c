#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vmd_irq {unsigned int virq; int /*<<< orphan*/  irq; int /*<<< orphan*/  node; } ;
struct vmd_dev {int /*<<< orphan*/  dev; } ;
struct msi_domain_info {int /*<<< orphan*/  chip; } ;
struct msi_desc {int dummy; } ;
struct irq_domain {int dummy; } ;
struct TYPE_4__ {struct msi_desc* desc; } ;
typedef  TYPE_1__ msi_alloc_info_t ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_5__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  handle_untracked_irq ; 
 unsigned int FUNC1 (struct vmd_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,unsigned int,int /*<<< orphan*/ ,struct vmd_irq*,int /*<<< orphan*/ ,struct vmd_dev*,int /*<<< orphan*/ *) ; 
 struct vmd_irq* FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct msi_desc*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 struct vmd_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vmd_dev*,struct msi_desc*) ; 

__attribute__((used)) static int FUNC8(struct irq_domain *domain, struct msi_domain_info *info,
			unsigned int virq, irq_hw_number_t hwirq,
			msi_alloc_info_t *arg)
{
	struct msi_desc *desc = arg->desc;
	struct vmd_dev *vmd = FUNC6(FUNC4(desc)->bus);
	struct vmd_irq *vmdirq = FUNC3(sizeof(*vmdirq), GFP_KERNEL);
	unsigned int index, vector;

	if (!vmdirq)
		return -ENOMEM;

	FUNC0(&vmdirq->node);
	vmdirq->irq = FUNC7(vmd, desc);
	vmdirq->virq = virq;
	index = FUNC1(vmd, vmdirq->irq);
	vector = FUNC5(vmd->dev, index);

	FUNC2(domain, virq, vector, info->chip, vmdirq,
			    handle_untracked_irq, vmd, NULL);
	return 0;
}