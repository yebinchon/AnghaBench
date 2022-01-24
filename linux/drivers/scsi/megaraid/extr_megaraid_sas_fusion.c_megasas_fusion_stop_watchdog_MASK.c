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
struct workqueue_struct {int dummy; } ;
struct megasas_instance {int /*<<< orphan*/  fw_fault_work; struct workqueue_struct* fw_fault_work_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct workqueue_struct*) ; 

void
FUNC3(struct megasas_instance *instance)
{
	struct workqueue_struct *wq;

	if (instance->fw_fault_work_q) {
		wq = instance->fw_fault_work_q;
		instance->fw_fault_work_q = NULL;
		if (!FUNC0(&instance->fw_fault_work))
			FUNC2(wq);
		FUNC1(wq);
	}
}