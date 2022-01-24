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
struct sas_task {int /*<<< orphan*/  slow_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sas_task*) ; 
 int /*<<< orphan*/  sas_task_cache ; 

void FUNC2(struct sas_task *task)
{
	if (task) {
		FUNC0(task->slow_task);
		FUNC1(sas_task_cache, task);
	}
}