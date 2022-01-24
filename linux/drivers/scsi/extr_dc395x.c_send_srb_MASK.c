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
struct ScsiReqBlk {int /*<<< orphan*/  list; struct DeviceCtlBlk* dcb; } ;
struct DeviceCtlBlk {scalar_t__ max_command; int /*<<< orphan*/  srb_waiting_list; int /*<<< orphan*/  srb_going_list; } ;
struct AdapterCtlBlk {int acb_flag; scalar_t__ active_dcb; } ;

/* Variables and functions */
 int HZ ; 
 int RESET_DETECT ; 
 int RESET_DEV ; 
 int RESET_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterCtlBlk*) ; 
 int /*<<< orphan*/  FUNC5 (struct AdapterCtlBlk*,int) ; 

__attribute__((used)) static void FUNC6(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb)
{
	struct DeviceCtlBlk *dcb = srb->dcb;

	if (dcb->max_command <= FUNC2(&dcb->srb_going_list) ||
	    acb->active_dcb ||
	    (acb->acb_flag & (RESET_DETECT + RESET_DONE + RESET_DEV))) {
		FUNC1(&srb->list, &dcb->srb_waiting_list);
		FUNC4(acb);
		return;
	}

	if (!FUNC3(acb, dcb, srb)) {
		FUNC1(&srb->list, &dcb->srb_going_list);
	} else {
		FUNC0(&srb->list, &dcb->srb_waiting_list);
		FUNC5(acb, HZ / 50);
	}
}