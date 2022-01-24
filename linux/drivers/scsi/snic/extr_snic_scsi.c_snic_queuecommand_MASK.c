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
struct snic_tgt {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int /*<<< orphan*/  tgt_not_rdy; } ;
struct TYPE_5__ {TYPE_1__ misc; } ;
struct snic {int /*<<< orphan*/  ios_inflight; TYPE_2__ s_stats; } ;
struct scsi_cmnd {int result; TYPE_3__* device; int /*<<< orphan*/ * cmnd; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*,char*,...) ; 
 size_t SNIC_ONLINE ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,char*,struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 struct snic* FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 size_t FUNC8 (struct snic*) ; 
 int FUNC9 (struct snic*,struct snic_tgt*,struct scsi_cmnd*) ; 
 int* snic_state_str ; 
 int FUNC10 (struct snic_tgt*) ; 
 struct snic_tgt* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 

int
FUNC13(struct Scsi_Host *shost, struct scsi_cmnd *sc)
{
	struct snic_tgt *tgt = NULL;
	struct snic *snic = FUNC6(shost);
	int ret;

	tgt = FUNC11(FUNC5(sc->device));
	ret = FUNC10(tgt);
	if (ret) {
		FUNC0(shost, "Tgt %p id %d Not Ready.\n", tgt, tgt->id);
		FUNC2(&snic->s_stats.misc.tgt_not_rdy);
		sc->result = ret;
		sc->scsi_done(sc);

		return 0;
	}

	if (FUNC8(snic) != SNIC_ONLINE) {
		FUNC0(shost, "snic state is %s\n",
			      snic_state_str[FUNC8(snic)]);

		return SCSI_MLQUEUE_HOST_BUSY;
	}
	FUNC4(&snic->ios_inflight);

	FUNC1(shost, "sc %p Tag %d (sc %0x) lun %lld in snic_qcmd\n",
		      sc, FUNC7(sc), sc->cmnd[0], sc->device->lun);

	ret = FUNC9(snic, tgt, sc);
	if (ret) {
		FUNC0(shost, "Failed to Q, Scsi Req w/ err %d.\n", ret);
		ret = SCSI_MLQUEUE_HOST_BUSY;
	}

	FUNC3(&snic->ios_inflight);

	return ret;
}