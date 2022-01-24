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
struct TYPE_2__ {scalar_t__ mbox_int; } ;
struct qla_hw_data {int /*<<< orphan*/  mbx_intr_comp; int /*<<< orphan*/  mbx_cmd_flags; TYPE_1__ flags; } ;

/* Variables and functions */
 int MBX_INTERRUPT ; 
 int /*<<< orphan*/  MBX_INTR_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct qla_hw_data *ha, int status)
{
	if (FUNC3(MBX_INTR_WAIT, &ha->mbx_cmd_flags) &&
	    (status & MBX_INTERRUPT) && ha->flags.mbox_int) {
		FUNC2(MBX_INTERRUPT, &ha->mbx_cmd_flags);
		FUNC0(MBX_INTR_WAIT, &ha->mbx_cmd_flags);
		FUNC1(&ha->mbx_intr_comp);
	}
}