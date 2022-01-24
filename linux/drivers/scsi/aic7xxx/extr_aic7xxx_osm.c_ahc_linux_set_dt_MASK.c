#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {scalar_t__ channel; int /*<<< orphan*/  id; TYPE_1__ dev; } ;
struct ahc_tmode_tstate {int dummy; } ;
struct ahc_syncrate {int dummy; } ;
struct ahc_softc {int dummy; } ;
struct TYPE_4__ {unsigned int ppr_options; unsigned int period; unsigned int width; int /*<<< orphan*/  offset; } ;
struct ahc_initiator_tinfo {TYPE_2__ goal; } ;
struct ahc_devinfo {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  this_id; scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_SYNCRATE_DT ; 
 int /*<<< orphan*/  AHC_TRANS_GOAL ; 
 int /*<<< orphan*/  FALSE ; 
 unsigned int MSG_EXT_PPR_DT_REQ ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ahc_initiator_tinfo* FUNC1 (struct ahc_softc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahc_tmode_tstate**) ; 
 struct ahc_syncrate* FUNC2 (struct ahc_softc*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_target*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,struct ahc_devinfo*,struct ahc_syncrate const*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*,unsigned long*) ; 
 struct Scsi_Host* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct scsi_target*) ; 

__attribute__((used)) static void FUNC9(struct scsi_target *starget, int dt)
{
	struct Scsi_Host *shost = FUNC7(starget->dev.parent);
	struct ahc_softc *ahc = *((struct ahc_softc **)shost->hostdata);
	struct ahc_tmode_tstate *tstate;
	struct ahc_initiator_tinfo *tinfo 
		= FUNC1(ahc,
				      starget->channel + 'A',
				      shost->this_id, starget->id, &tstate);
	struct ahc_devinfo devinfo;
	unsigned int ppr_options = tinfo->goal.ppr_options
		& ~MSG_EXT_PPR_DT_REQ;
	unsigned int period = tinfo->goal.period;
	unsigned int width = tinfo->goal.width;
	unsigned long flags;
	const struct ahc_syncrate *syncrate;

	if (dt && FUNC8(starget)) {
		ppr_options |= MSG_EXT_PPR_DT_REQ;
		if (!width)
			FUNC3(starget, 1);
	} else if (period == 9)
		period = 10;	/* if resetting DT, period must be >= 25ns */

	FUNC0(&devinfo, shost->this_id, starget->id, 0,
			    starget->channel + 'A', ROLE_INITIATOR);
	syncrate = FUNC2(ahc, &period, &ppr_options,AHC_SYNCRATE_DT);
	FUNC4(ahc, &flags);
	FUNC5(ahc, &devinfo, syncrate, period, tinfo->goal.offset,
			 ppr_options, AHC_TRANS_GOAL, FALSE);
	FUNC6(ahc, &flags);
}