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
struct ipr_hrr_queue {int /*<<< orphan*/  _lock; } ;
struct ipr_cmnd {struct ipr_hrr_queue* hrrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipr_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ipr_cmnd *ipr_cmd)
{
	unsigned long hrrq_flags;
	struct ipr_hrr_queue *hrrq = ipr_cmd->hrrq;

	FUNC1(&hrrq->_lock, hrrq_flags);
	FUNC0(ipr_cmd);
	FUNC2(&hrrq->_lock, hrrq_flags);
}