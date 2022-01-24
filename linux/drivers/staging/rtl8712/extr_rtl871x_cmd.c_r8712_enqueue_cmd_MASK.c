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
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct cmd_priv {int /*<<< orphan*/  cmd_queue_comp; struct __queue cmd_queue; TYPE_2__* padapter; } ;
struct cmd_obj {int /*<<< orphan*/  list; } ;
struct TYPE_3__ {scalar_t__ bautoload_fail_flag; } ;
struct TYPE_4__ {TYPE_1__ eeprompriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct cmd_priv *pcmdpriv, struct cmd_obj *obj)
{
	struct __queue *queue;
	unsigned long irqL;

	if (pcmdpriv->padapter->eeprompriv.bautoload_fail_flag)
		return;
	if (!obj)
		return;
	queue = &pcmdpriv->cmd_queue;
	FUNC2(&queue->lock, irqL);
	FUNC1(&obj->list, &queue->queue);
	FUNC3(&queue->lock, irqL);
	FUNC0(&pcmdpriv->cmd_queue_comp);
}