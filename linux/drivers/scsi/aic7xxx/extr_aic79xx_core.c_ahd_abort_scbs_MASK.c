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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
struct scb {int flags; } ;
struct ahd_softc {int /*<<< orphan*/  flags; int /*<<< orphan*/  pending_scbs; } ;
typedef  int /*<<< orphan*/  role_t ;
typedef  scalar_t__ cam_status ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_NUM_LUNS_NONPKT ; 
 int /*<<< orphan*/  AHD_UPDATE_PEND_CMDS ; 
 int FUNC0 (int,char,int) ; 
 int CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_REQ_INPROG ; 
 int CAM_TARGET_WILDCARD ; 
 struct scb* FUNC1 (int /*<<< orphan*/ *) ; 
 struct scb* FUNC2 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROLE_TARGET ; 
 int SCB_ACTIVE ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  SEARCH_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,struct scb*) ; 
 int FUNC4 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct scb*) ; 
 scalar_t__ FUNC7 (struct scb*) ; 
 struct scb* FUNC8 (struct ahd_softc*,int) ; 
 scalar_t__ FUNC9 (struct ahd_softc*,struct scb*,int,char,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,int,char,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ahd_softc*) ; 
 int FUNC13 (struct ahd_softc*,int,char,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  pending_links ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static int
FUNC18(struct ahd_softc *ahd, int target, char channel,
	       int lun, u_int tag, role_t role, uint32_t status)
{
	struct		scb *scbp;
	struct		scb *scbp_next;
	u_int		i, j;
	u_int		maxtarget;
	u_int		minlun;
	u_int		maxlun;
	int		found;
	ahd_mode_state	saved_modes;

	/* restore this when we're done */
	saved_modes = FUNC12(ahd);
	FUNC14(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);

	found = FUNC13(ahd, target, channel, lun, SCB_LIST_NULL,
				   role, CAM_REQUEUE_REQ, SEARCH_COMPLETE);

	/*
	 * Clean out the busy target table for any untagged commands.
	 */
	i = 0;
	maxtarget = 16;
	if (target != CAM_TARGET_WILDCARD) {
		i = target;
		if (channel == 'B')
			i += 8;
		maxtarget = i + 1;
	}

	if (lun == CAM_LUN_WILDCARD) {
		minlun = 0;
		maxlun = AHD_NUM_LUNS_NONPKT;
	} else if (lun >= AHD_NUM_LUNS_NONPKT) {
		minlun = maxlun = 0;
	} else {
		minlun = lun;
		maxlun = lun + 1;
	}

	if (role != ROLE_TARGET) {
		for (;i < maxtarget; i++) {
			for (j = minlun;j < maxlun; j++) {
				u_int scbid;
				u_int tcl;

				tcl = FUNC0(i, 'A', j);
				scbid = FUNC4(ahd, tcl);
				scbp = FUNC8(ahd, scbid);
				if (scbp == NULL
				 || FUNC9(ahd, scbp, target, channel,
						  lun, tag, role) == 0)
					continue;
				FUNC16(ahd, FUNC0(i, 'A', j));
			}
		}
	}

	/*
	 * Don't abort commands that have already completed,
	 * but haven't quite made it up to the host yet.
	 */
	FUNC5(ahd);

	/*
	 * Go through the pending CCB list and look for
	 * commands for this target that are still active.
	 * These are other tagged commands that were
	 * disconnected when the reset occurred.
	 */
	scbp_next = FUNC1(&ahd->pending_scbs);
	while (scbp_next != NULL) {
		scbp = scbp_next;
		scbp_next = FUNC2(scbp, pending_links);
		if (FUNC9(ahd, scbp, target, channel, lun, tag, role)) {
			cam_status ostat;

			ostat = FUNC7(scbp);
			if (ostat == CAM_REQ_INPROG)
				FUNC15(scbp, status);
			if (FUNC7(scbp) != CAM_REQ_CMP)
				FUNC6(scbp);
			if ((scbp->flags & SCB_ACTIVE) == 0)
				FUNC17("Inactive SCB on pending list\n");
			FUNC3(ahd, scbp);
			found++;
		}
	}
	FUNC11(ahd, saved_modes);
	FUNC10(ahd, target, channel, lun, tag, role, status);
	ahd->flags |= AHD_UPDATE_PEND_CMDS;
	return found;
}