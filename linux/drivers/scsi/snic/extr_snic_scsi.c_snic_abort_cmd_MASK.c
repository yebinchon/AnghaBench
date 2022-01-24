#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
typedef  scalar_t__ u32 ;
struct snic {TYPE_2__* shost; } ;
struct scsi_cmnd {int /*<<< orphan*/  request; int /*<<< orphan*/ * cmnd; TYPE_1__* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  host_no; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FAST_IO_FAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 scalar_t__ SNIC_ONLINE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int SUCCESS ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct snic* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snic*,struct scsi_cmnd*) ; 
 int FUNC8 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC9 (struct snic*) ; 
 int FUNC10 (struct snic*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC11 (int) ; 

int
FUNC12(struct scsi_cmnd *sc)
{
	struct snic *snic = FUNC6(sc->device->host);
	int ret = SUCCESS, tag = FUNC8(sc);
	u32 start_time = jiffies;

	FUNC1(snic->shost, "abt_cmd:sc %p :0x%x :req = %p :tag = %d\n",
		       sc, sc->cmnd[0], sc->request, tag);

	if (FUNC11(FUNC9(snic) != SNIC_ONLINE)) {
		FUNC0(snic->shost,
			      "abt_cmd: tag %x Parent Devs are not rdy\n",
			      tag);
		ret = FAST_IO_FAIL;

		goto abort_end;
	}


	ret = FUNC10(snic, sc);
	if (ret)
		goto abort_end;

	ret = FUNC7(snic, sc);

abort_end:
	FUNC2(snic->shost->host_no, tag, (ulong) sc,
		 FUNC5(jiffies - start_time), 0,
		 FUNC3(sc), FUNC4(sc));

	FUNC1(snic->shost,
		      "abts: Abort Req Status = %s\n",
		      (ret == SUCCESS) ? "SUCCESS" :
		       ((ret == FAST_IO_FAIL) ? "FAST_IO_FAIL" : "FAILED"));

	return ret;
}