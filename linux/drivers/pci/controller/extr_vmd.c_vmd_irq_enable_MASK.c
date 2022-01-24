#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vmd_irq {int enabled; TYPE_2__* irq; int /*<<< orphan*/  node; } ;
struct irq_data {TYPE_1__* chip; struct vmd_irq* chip_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* irq_unmask ) (struct irq_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct vmd_irq *vmdirq = data->chip_data;
	unsigned long flags;

	FUNC2(&list_lock, flags);
	FUNC0(vmdirq->enabled);
	FUNC1(&vmdirq->node, &vmdirq->irq->irq_list);
	vmdirq->enabled = true;
	FUNC3(&list_lock, flags);

	data->chip->irq_unmask(data);
}