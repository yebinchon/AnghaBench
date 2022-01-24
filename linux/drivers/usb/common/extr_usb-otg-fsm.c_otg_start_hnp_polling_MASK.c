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
struct otg_fsm {int /*<<< orphan*/  hnp_polling_work; int /*<<< orphan*/  host_req_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_HOST_REQ_POLL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  otg_hnp_polling_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct otg_fsm *fsm)
{
	/*
	 * The memory of host_req_flag should be allocated by
	 * controller driver, otherwise, hnp polling is not started.
	 */
	if (!fsm->host_req_flag)
		return;

	FUNC0(&fsm->hnp_polling_work, otg_hnp_polling_work);
	FUNC2(&fsm->hnp_polling_work,
					FUNC1(T_HOST_REQ_POLL));
}