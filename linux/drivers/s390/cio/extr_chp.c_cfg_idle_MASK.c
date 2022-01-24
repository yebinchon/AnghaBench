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
struct chp_id {int dummy; } ;
typedef  enum cfg_task_t { ____Placeholder_cfg_task_t } cfg_task_t ;

/* Variables and functions */
 int /*<<< orphan*/  cfg_lock ; 
 int cfg_none ; 
 int FUNC0 (struct chp_id*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(void)
{
	struct chp_id chpid;
	enum cfg_task_t t;

	FUNC1(&cfg_lock);
	t = FUNC0(&chpid);
	FUNC2(&cfg_lock);

	return t == cfg_none;
}