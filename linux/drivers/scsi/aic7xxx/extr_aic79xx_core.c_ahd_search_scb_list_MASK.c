#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct scb {int flags; } ;
struct TYPE_2__ {scalar_t__ numscbs; } ;
struct ahd_softc {TYPE_1__ scb_data; } ;
typedef  int /*<<< orphan*/  role_t ;
typedef  int ahd_search_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AHD_MODE_SCSI_MSK ; 
 int AHD_SCB_MAX ; 
 int /*<<< orphan*/  CMDS_PENDING ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int SCB_ACTIVE ; 
 scalar_t__ SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT ; 
#define  SEARCH_COMPLETE 131 
#define  SEARCH_COUNT 130 
#define  SEARCH_PRINT 129 
#define  SEARCH_REMOVE 128 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 scalar_t__ FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC6 (struct ahd_softc*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct ahd_softc*,struct scb*,int,char,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 

__attribute__((used)) static int
FUNC14(struct ahd_softc *ahd, int target, char channel,
		    int lun, u_int tag, role_t role, uint32_t status,
		    ahd_search_action action, u_int *list_head, 
		    u_int *list_tail, u_int tid)
{
	struct	scb *scb;
	u_int	scbid;
	u_int	next;
	u_int	prev;
	int	found;

	FUNC0(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
	found = 0;
	prev = SCB_LIST_NULL;
	next = *list_head;
	*list_tail = SCB_LIST_NULL;
	for (scbid = next; !FUNC1(scbid); scbid = next) {
		if (scbid >= ahd->scb_data.numscbs) {
			FUNC13("%s:SCB List inconsistency. "
			       "SCB == 0x%x, yet numscbs == 0x%x.",
			       FUNC8(ahd), scbid, ahd->scb_data.numscbs);
			FUNC3(ahd);
			FUNC12("for safety");
		}
		scb = FUNC6(ahd, scbid);
		if (scb == NULL) {
			FUNC13("%s: SCB = %d Not Active!\n",
			       FUNC8(ahd), scbid);
			FUNC12("Waiting List traversal\n");
		}
		FUNC11(ahd, scbid);
		*list_tail = scbid;
		next = FUNC5(ahd, SCB_NEXT);
		if (FUNC7(ahd, scb, target, channel,
				  lun, SCB_LIST_NULL, role) == 0) {
			prev = scbid;
			continue;
		}
		found++;
		switch (action) {
		case SEARCH_COMPLETE:
			if ((scb->flags & SCB_ACTIVE) == 0)
				FUNC13("Inactive SCB in Waiting List\n");
			FUNC2(ahd, scb, status);
			/* fall through */
		case SEARCH_REMOVE:
			FUNC10(ahd, scbid, prev, next, tid);
			*list_tail = prev;
			if (FUNC1(prev))
				*list_head = next;
			break;
		case SEARCH_PRINT:
			FUNC13("0x%x ", scbid);
			/* fall through */
		case SEARCH_COUNT:
			prev = scbid;
			break;
		}
		if (found > AHD_SCB_MAX)
			FUNC12("SCB LIST LOOP");
	}
	if (action == SEARCH_COMPLETE
	 || action == SEARCH_REMOVE)
		FUNC9(ahd, CMDS_PENDING, FUNC4(ahd, CMDS_PENDING) - found);
	return (found);
}