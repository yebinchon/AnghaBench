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
struct scsi_qla_host {TYPE_2__* hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  q_full_lock; int /*<<< orphan*/  num_pend_cmds; } ;
struct TYPE_4__ {TYPE_1__ tgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct scsi_qla_host *vha)
{
	unsigned long flags;

	FUNC0(&vha->hw->tgt.q_full_lock, flags);
	vha->hw->tgt.num_pend_cmds--;
	FUNC1(&vha->hw->tgt.q_full_lock, flags);
}