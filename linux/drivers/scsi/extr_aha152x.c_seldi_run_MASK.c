#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int this_id; } ;
struct TYPE_8__ {int /*<<< orphan*/ * syncrate; } ;
struct TYPE_6__ {int phase; } ;
struct TYPE_7__ {TYPE_1__ SCp; } ;

/* Variables and functions */
 int CLRBUSFREE ; 
 int CLRPHASECHG ; 
 int CLRSELDI ; 
 TYPE_2__* CURRENT_SC ; 
 int /*<<< orphan*/  DISCONNECTED_SC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  ISSUE_SC ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int OID_ ; 
 int RECONN_TARGET ; 
 int /*<<< orphan*/  SCSIID ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  SCSISIG ; 
 int /*<<< orphan*/  SELID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int /*<<< orphan*/  SSTAT1 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int not_issued ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,int) ; 

__attribute__((used)) static void FUNC9(struct Scsi_Host *shpnt)
{
	int selid;
	int target;
	unsigned long flags;

	FUNC4(SCSISIG, 0);
	FUNC4(SSTAT0, CLRSELDI);
	FUNC4(SSTAT1, CLRBUSFREE);
	FUNC4(SSTAT1, CLRPHASECHG);

	if(CURRENT_SC) {
		if(!(CURRENT_SC->SCp.phase & not_issued))
			FUNC7(KERN_ERR, CURRENT_SC,
				    "command should not have been issued yet\n");

		FUNC0(flags);
		FUNC6(&ISSUE_SC, CURRENT_SC);
		FUNC1(flags);

		CURRENT_SC = NULL;
	}

	if (!DISCONNECTED_SC)
		return;

	RECONN_TARGET=-1;

	selid = FUNC2(SELID) & ~(1 << shpnt->this_id);

	if (selid==0) {
		FUNC8(KERN_INFO, shpnt,
			     "target id unknown (%02x)\n", selid);
		return;
	}

	for(target=7; !(selid & (1 << target)); target--)
		;

	if(selid & ~(1 << target)) {
		FUNC8(KERN_INFO, shpnt,
			     "multiple targets reconnected (%02x)\n", selid);
	}


	FUNC4(SCSIID, (shpnt->this_id << OID_) | target);
	FUNC4(SCSISEQ, 0);

	FUNC5(FUNC3(shpnt)->syncrate[target]);

	RECONN_TARGET=target;
}