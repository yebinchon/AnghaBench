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
struct TYPE_3__ {int /*<<< orphan*/  hba_reset_fail; } ;
struct TYPE_4__ {TYPE_1__ reset; } ;
struct snic {TYPE_2__ s_stats; int /*<<< orphan*/  snic_lock; int /*<<< orphan*/  ios_inflight; } ;
struct scsi_cmnd {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  enum snic_state { ____Placeholder_snic_state } snic_state ;

/* Variables and functions */
 int FAILED ; 
 scalar_t__ SNIC_FWRESET ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  SNIC_HOST_RESET_TIMEOUT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct snic* FUNC7 (struct Scsi_Host*) ; 
 scalar_t__ FUNC8 (struct snic*) ; 
 int FUNC9 (struct snic*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct snic*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC13(struct Scsi_Host *shost, struct scsi_cmnd *sc)
{
	struct snic *snic = FUNC7(shost);
	enum snic_state sv_state;
	unsigned long flags;
	int ret = FAILED;

	/* Set snic state as SNIC_FWRESET*/
	sv_state = FUNC8(snic);

	FUNC11(&snic->snic_lock, flags);
	if (FUNC8(snic) == SNIC_FWRESET) {
		FUNC12(&snic->snic_lock, flags);
		FUNC1(shost, "reset:prev reset is in progres\n");

		FUNC5(SNIC_HOST_RESET_TIMEOUT);
		ret = SUCCESS;

		goto reset_end;
	}

	FUNC10(snic, SNIC_FWRESET);
	FUNC12(&snic->snic_lock, flags);


	/* Wait for all the IOs that are entered in Qcmd */
	while (FUNC3(&snic->ios_inflight))
		FUNC6(FUNC4(1));

	ret = FUNC9(snic, sc);
	if (ret) {
		FUNC0(shost,
			      "reset:Host Reset Failed w/ err %d.\n",
			      ret);
		FUNC11(&snic->snic_lock, flags);
		FUNC10(snic, sv_state);
		FUNC12(&snic->snic_lock, flags);
		FUNC2(&snic->s_stats.reset.hba_reset_fail);
		ret = FAILED;

		goto reset_end;
	}

	ret = SUCCESS;

reset_end:
	return ret;
}