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
typedef  int /*<<< orphan*/  u32 ;
struct sas_task {int /*<<< orphan*/  (* task_done ) (struct sas_task*) ;} ;
struct pm8001_hba_info {int /*<<< orphan*/  lock; } ;
struct pm8001_ccb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sas_task*) ; 

__attribute__((used)) static inline void
FUNC5(struct pm8001_hba_info *pm8001_ha,
			struct sas_task *task, struct pm8001_ccb_info *ccb,
			u32 ccb_idx)
{
	FUNC0(pm8001_ha, task, ccb, ccb_idx);
	FUNC1(); /*in order to force CPU ordering*/
	FUNC3(&pm8001_ha->lock);
	task->task_done(task);
	FUNC2(&pm8001_ha->lock);
}