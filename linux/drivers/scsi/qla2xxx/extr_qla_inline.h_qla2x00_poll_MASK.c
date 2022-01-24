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
struct rsp_que {struct qla_hw_data* hw; } ;
struct qla_hw_data {TYPE_1__* isp_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* intr_handler ) (int /*<<< orphan*/ ,struct rsp_que*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rsp_que*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rsp_que*) ; 

__attribute__((used)) static inline void
FUNC3(struct rsp_que *rsp)
{
	struct qla_hw_data *ha = rsp->hw;

	if (FUNC0(ha))
		FUNC1(0, rsp);
	else
		ha->isp_ops->intr_handler(0, rsp);
}