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
struct ScsiReqBlk {int /*<<< orphan*/  state; struct DeviceCtlBlk* dcb; } ;
struct DeviceCtlBlk {int sync_mode; int /*<<< orphan*/  sync_period; int /*<<< orphan*/  target_id; } ;
struct AdapterCtlBlk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_0 ; 
 int /*<<< orphan*/  DBG_1 ; 
 int /*<<< orphan*/  DC395x_ENABLE_MSGOUT ; 
 int /*<<< orphan*/  SRB_DO_WIDE_NEGO ; 
 int SYNC_NEGO_DONE ; 
 int SYNC_NEGO_ENABLE ; 
 int WIDE_NEGO_DONE ; 
 int WIDE_NEGO_ENABLE ; 
 int /*<<< orphan*/  WIDE_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterCtlBlk*,struct DeviceCtlBlk*) ; 

__attribute__((used)) static inline void FUNC3(struct AdapterCtlBlk *acb,
		struct ScsiReqBlk *srb)
{
	struct DeviceCtlBlk *dcb = srb->dcb;
	FUNC1(DBG_1, "msgin_set_nowide: <%02i>\n", dcb->target_id);

	dcb->sync_period &= ~WIDE_SYNC;
	dcb->sync_mode &= ~(WIDE_NEGO_ENABLE);
	dcb->sync_mode |= WIDE_NEGO_DONE;
	srb->state &= ~SRB_DO_WIDE_NEGO;
	FUNC2(acb, dcb);
	if ((dcb->sync_mode & SYNC_NEGO_ENABLE)
	    && !(dcb->sync_mode & SYNC_NEGO_DONE)) {
		FUNC0(acb, dcb, srb);
		DC395x_ENABLE_MSGOUT;
		FUNC1(DBG_0, "msgin_set_nowide: Rejected. Try SDTR anyway\n");
	}
}