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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {scalar_t__ channel; int /*<<< orphan*/  id; TYPE_1__ dev; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {size_t unit; } ;
struct ahd_linux_iocell_opts {int /*<<< orphan*/  precomp; } ;
struct TYPE_4__ {unsigned int ppr_options; unsigned int period; int /*<<< orphan*/  offset; } ;
struct ahd_initiator_tinfo {TYPE_2__ goal; } ;
struct ahd_devinfo {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  this_id; scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int AHD_SHOW_DV ; 
 int /*<<< orphan*/  AHD_SYNCRATE_MAX ; 
 int /*<<< orphan*/  AHD_SYNCRATE_ULTRA2 ; 
 int /*<<< orphan*/  AHD_TRANS_GOAL ; 
 int /*<<< orphan*/  AIC79XX_DEFAULT_PRECOMP ; 
 size_t FUNC1 (struct ahd_linux_iocell_opts*) ; 
 int /*<<< orphan*/  FALSE ; 
 unsigned int MSG_EXT_PPR_DT_REQ ; 
 unsigned int MSG_EXT_PPR_PCOMP_EN ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int ahd_debug ; 
 struct ahd_initiator_tinfo* FUNC3 (struct ahd_softc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,struct ahd_devinfo*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,unsigned long*) ; 
 struct ahd_linux_iocell_opts* aic79xx_iocell_info ; 
 struct Scsi_Host* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (struct scsi_target*) ; 

__attribute__((used)) static void FUNC12(struct scsi_target *starget, int pcomp)
{
	struct Scsi_Host *shost = FUNC9(starget->dev.parent);
	struct ahd_softc *ahd = *((struct ahd_softc **)shost->hostdata);
	struct ahd_tmode_tstate *tstate;
	struct ahd_initiator_tinfo *tinfo 
		= FUNC3(ahd,
				      starget->channel + 'A',
				      shost->this_id, starget->id, &tstate);
	struct ahd_devinfo devinfo;
	unsigned int ppr_options = tinfo->goal.ppr_options
		& ~MSG_EXT_PPR_PCOMP_EN;
	unsigned int period = tinfo->goal.period;
	unsigned int dt = ppr_options & MSG_EXT_PPR_DT_REQ;
	unsigned long flags;

#ifdef AHD_DEBUG
	if ((ahd_debug & AHD_SHOW_DV) != 0)
		printk("%s: %s Precompensation\n", ahd_name(ahd),
		       pcomp ? "Enable" : "Disable");
#endif

	if (pcomp && FUNC11(starget)) {
		uint8_t precomp;

		if (ahd->unit < FUNC1(aic79xx_iocell_info)) {
			const struct ahd_linux_iocell_opts *iocell_opts;

			iocell_opts = &aic79xx_iocell_info[ahd->unit];
			precomp = iocell_opts->precomp;
		} else {
			precomp = AIC79XX_DEFAULT_PRECOMP;
		}
		ppr_options |= MSG_EXT_PPR_PCOMP_EN;
		FUNC0(ahd, precomp);
	} else {
		FUNC0(ahd, 0);
	}

	FUNC2(&devinfo, shost->this_id, starget->id, 0,
			    starget->channel + 'A', ROLE_INITIATOR);
	FUNC4(ahd, &period, &ppr_options,
			  dt ? AHD_SYNCRATE_MAX : AHD_SYNCRATE_ULTRA2);

	FUNC5(ahd, &flags);
	FUNC7(ahd, &devinfo, period, tinfo->goal.offset,
			 ppr_options, AHD_TRANS_GOAL, FALSE);
	FUNC8(ahd, &flags);
}