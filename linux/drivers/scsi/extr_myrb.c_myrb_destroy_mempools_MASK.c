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
struct myrb_hba {int /*<<< orphan*/  dcdb_pool; int /*<<< orphan*/  sg_pool; int /*<<< orphan*/  work_q; int /*<<< orphan*/  monitor_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct myrb_hba *cb)
{
	FUNC0(&cb->monitor_work);
	FUNC1(cb->work_q);

	FUNC2(cb->sg_pool);
	FUNC2(cb->dcdb_pool);
}