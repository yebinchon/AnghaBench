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
struct TYPE_2__ {scalar_t__ typ; } ;
struct snic_tgt {TYPE_1__ tdata; } ;
struct snic {int max_tag_id; int /*<<< orphan*/  shost; } ;
struct scsi_cmnd {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int SNIC_ITMF_ABTS_TASK ; 
 int SNIC_ITMF_ABTS_TASK_TERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ SNIC_TGT_DAS ; 
 int SUCCESS ; 
 struct scsi_cmnd* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct snic* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snic*,struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct snic*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snic_tgt*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct snic_tgt* FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(struct snic_tgt *tgt)
{
	struct snic *snic = NULL;
	struct scsi_cmnd *sc = NULL;
	struct snic_tgt *sc_tgt = NULL;
	spinlock_t *io_lock = NULL;
	unsigned long flags;
	int ret = 0, tag, abt_cnt = 0, tmf = 0;

	if (!tgt)
		return -1;

	snic = FUNC4(FUNC7(tgt));
	FUNC1(snic->shost, "tgt_abt_io: Cleaning Pending IOs.\n");

	if (tgt->tdata.typ == SNIC_TGT_DAS)
		tmf = SNIC_ITMF_ABTS_TASK;
	else
		tmf = SNIC_ITMF_ABTS_TASK_TERM;

	for (tag = 0; tag < snic->max_tag_id; tag++) {
		io_lock = FUNC6(snic, tag);

		FUNC8(io_lock, flags);
		sc = FUNC2(snic->shost, tag);
		if (!sc) {
			FUNC9(io_lock, flags);

			continue;
		}

		sc_tgt = FUNC10(FUNC3(sc->device));
		if (sc_tgt != tgt) {
			FUNC9(io_lock, flags);

			continue;
		}
		FUNC9(io_lock, flags);

		ret = FUNC5(snic, sc, tmf);
		if (ret < 0) {
			FUNC0(snic->shost,
				      "tgt_abt_io: Tag %x, Failed w err = %d\n",
				      tag, ret);

			continue;
		}

		if (ret == SUCCESS)
			abt_cnt++;
	}

	FUNC1(snic->shost, "tgt_abt_io: abt_cnt = %d\n", abt_cnt);

	return 0;
}