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
struct qla_hw_data {int interrupts_on; int /*<<< orphan*/  hardware_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC3(struct qla_hw_data *ha)
{
	unsigned long flags = 0;

	FUNC1(&ha->hardware_lock, flags);
	ha->interrupts_on = 1;
	FUNC0(ha);
	FUNC2(&ha->hardware_lock, flags);
}