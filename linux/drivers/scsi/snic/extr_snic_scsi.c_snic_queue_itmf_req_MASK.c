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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  u32 ;
struct snic_req_info {int tm_tag; int /*<<< orphan*/  tgt_id; } ;
struct snic_host_req {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hid; } ;
struct snic {int /*<<< orphan*/  shost; TYPE_2__ config; } ;
struct scsi_lun {int /*<<< orphan*/  scsi_lun; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct scsi_cmnd*,struct snic_req_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct scsi_cmnd*,struct snic_req_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 struct snic_req_info* FUNC4 (struct snic_host_req*) ; 
 int FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct snic_host_req*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snic*,struct snic_host_req*,int) ; 

__attribute__((used)) static int
FUNC8(struct snic *snic,
		    struct snic_host_req *tmreq,
		    struct scsi_cmnd *sc,
		    u32 tmf,
		    u32 req_id)
{
	struct snic_req_info *rqi = FUNC4(tmreq);
	struct scsi_lun lun;
	int tm_tag = FUNC5(sc) | rqi->tm_tag;
	int ret = 0;

	FUNC0(!rqi);
	FUNC0(!rqi->tm_tag);

	/* fill in lun info */
	FUNC3(sc->device->lun, &lun);

	/* Initialize snic_host_req: itmf */
	FUNC6(tmreq,
		       tm_tag,
		       snic->config.hid,
		       (ulong) rqi,
		       0 /* flags */,
		       req_id, /* Command to be aborted. */
		       rqi->tgt_id,
		       lun.scsi_lun,
		       tmf);

	/*
	 * In case of multiple aborts on same cmd,
	 * use try_wait_for_completion and completion_done() to check
	 * whether it queues aborts even after completion of abort issued
	 * prior.SNIC_BUG_ON(completion_done(&rqi->done));
	 */

	ret = FUNC7(snic, tmreq, sizeof(*tmreq));
	if (ret)
		FUNC1(snic->shost,
			      "qitmf:Queuing ITMF(%d) Req sc %p, rqi %p, req_id %d tag %d Failed, ret = %d\n",
			      tmf, sc, rqi, req_id, FUNC5(sc), ret);
	else
		FUNC2(snic->shost,
			      "qitmf:Queuing ITMF(%d) Req sc %p, rqi %p, req_id %d, tag %d (req_id)- Success.",
			      tmf, sc, rqi, req_id, FUNC5(sc));

	return ret;
}