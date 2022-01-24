#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qedi_glbl_q_params {int dummy; } ;
struct qedi_ctx {int num_queues; int /*<<< orphan*/  global_queues; int /*<<< orphan*/  hw_p_cpuq; scalar_t__ p_cpuq; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qedi_ctx*) ; 

__attribute__((used)) static void FUNC3(struct qedi_ctx *qedi)
{
	size_t size = 0;

	if (qedi->p_cpuq) {
		size = qedi->num_queues * sizeof(struct qedi_glbl_q_params);
		FUNC0(&qedi->pdev->dev, size, qedi->p_cpuq,
				    qedi->hw_p_cpuq);
	}

	FUNC2(qedi);

	FUNC1(qedi->global_queues);
}