#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct ahd_tmode_tstate {int discenable; int tagenable; } ;
struct ahd_softc {int our_id; int user_discenable; int user_tagenable; int features; } ;
struct TYPE_6__ {int protocol_version; int transport_version; } ;
struct TYPE_5__ {int protocol_version; int transport_version; } ;
struct TYPE_4__ {int protocol_version; int transport_version; int ppr_options; int /*<<< orphan*/  width; int /*<<< orphan*/  offset; int /*<<< orphan*/  period; } ;
struct ahd_initiator_tinfo {TYPE_3__ curr; TYPE_2__ goal; TYPE_1__ user; } ;
struct ahd_devinfo {int dummy; } ;

/* Variables and functions */
 int AHD_NUM_TARGETS ; 
 int AHD_RTI ; 
 int /*<<< orphan*/  AHD_SYNCRATE_160 ; 
 int /*<<< orphan*/  AHD_SYNCRATE_DT ; 
 int AHD_TRANS_CUR ; 
 int AHD_TRANS_GOAL ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MAX_OFFSET ; 
 int MSG_EXT_PPR_DT_REQ ; 
 int MSG_EXT_PPR_HOLD_MCS ; 
 int MSG_EXT_PPR_IU_REQ ; 
 int MSG_EXT_PPR_QAS_REQ ; 
 int MSG_EXT_PPR_RD_STRM ; 
 int MSG_EXT_PPR_RTI ; 
 int MSG_EXT_PPR_WR_FLOW ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_16_BIT ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (struct ahd_softc*,int,char) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_devinfo*,int,int,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 struct ahd_initiator_tinfo* FUNC2 (struct ahd_softc*,char,int,int,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct ahd_softc *ahd)
{
	int	targ;

	ahd->our_id = 7;

	/*
	 * Allocate a tstate to house information for our
	 * initiator presence on the bus as well as the user
	 * data for any target mode initiator.
	 */
	if (FUNC0(ahd, ahd->our_id, 'A') == NULL) {
		FUNC6("%s: unable to allocate ahd_tmode_tstate.  "
		       "Failing attach\n", FUNC3(ahd));
		return (ENOMEM);
	}

	for (targ = 0; targ < AHD_NUM_TARGETS; targ++) {
		struct	 ahd_devinfo devinfo;
		struct	 ahd_initiator_tinfo *tinfo;
		struct	 ahd_tmode_tstate *tstate;
		uint16_t target_mask;

		tinfo = FUNC2(ahd, 'A', ahd->our_id,
					    targ, &tstate);
		/*
		 * We support SPC2 and SPI4.
		 */
		tinfo->user.protocol_version = 4;
		tinfo->user.transport_version = 4;

		target_mask = 0x01 << targ;
		ahd->user_discenable |= target_mask;
		tstate->discenable |= target_mask;
		ahd->user_tagenable |= target_mask;
#ifdef AHD_FORCE_160
		tinfo->user.period = AHD_SYNCRATE_DT;
#else
		tinfo->user.period = AHD_SYNCRATE_160;
#endif
		tinfo->user.offset = MAX_OFFSET;
		tinfo->user.ppr_options = MSG_EXT_PPR_RD_STRM
					| MSG_EXT_PPR_WR_FLOW
					| MSG_EXT_PPR_HOLD_MCS
					| MSG_EXT_PPR_IU_REQ
					| MSG_EXT_PPR_QAS_REQ
					| MSG_EXT_PPR_DT_REQ;
		if ((ahd->features & AHD_RTI) != 0)
			tinfo->user.ppr_options |= MSG_EXT_PPR_RTI;

		tinfo->user.width = MSG_EXT_WDTR_BUS_16_BIT;

		/*
		 * Start out Async/Narrow/Untagged and with
		 * conservative protocol support.
		 */
		tinfo->goal.protocol_version = 2;
		tinfo->goal.transport_version = 2;
		tinfo->curr.protocol_version = 2;
		tinfo->curr.transport_version = 2;
		FUNC1(&devinfo, ahd->our_id,
				    targ, CAM_LUN_WILDCARD,
				    'A', ROLE_INITIATOR);
		tstate->tagenable &= ~target_mask;
		FUNC5(ahd, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
			      AHD_TRANS_CUR|AHD_TRANS_GOAL, /*paused*/TRUE);
		FUNC4(ahd, &devinfo, /*period*/0, /*offset*/0,
				 /*ppr_options*/0, AHD_TRANS_CUR|AHD_TRANS_GOAL,
				 /*paused*/TRUE);
	}
	return (0);
}