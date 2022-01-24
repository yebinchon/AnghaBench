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
struct snic_req_info {int dummy; } ;
struct snic_host_req {int dummy; } ;
struct snic {int /*<<< orphan*/  ios_inflight; int /*<<< orphan*/  shost; } ;
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int SCSI_NO_TAG ; 
 scalar_t__ SNIC_FWRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,struct scsi_cmnd*,struct snic_req_info*,int,int,int) ; 
 int SNIC_ITMF_LUN_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,struct scsi_cmnd*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snic_host_req* FUNC4 (struct snic*,struct snic_req_info*) ; 
 int FUNC5 (struct scsi_cmnd*) ; 
 struct snic_host_req* FUNC6 (struct snic*,struct snic_req_info*) ; 
 scalar_t__ FUNC7 (struct snic*) ; 
 int FUNC8 (struct snic*,struct snic_host_req*,struct scsi_cmnd*,int,int) ; 

__attribute__((used)) static int
FUNC9(struct snic *snic,
		    struct snic_req_info *rqi,
		    struct scsi_cmnd *sc,
		    int tmf)
{
	struct snic_host_req *tmreq = NULL;
	int req_id = 0, tag = FUNC5(sc);
	int ret = 0;

	if (FUNC7(snic) == SNIC_FWRESET)
		return -EBUSY;

	FUNC3(&snic->ios_inflight);

	FUNC1(snic->shost,
		      "issu_tmreq: Task mgmt req %d. rqi %p w/ tag %x\n",
		      tmf, rqi, tag);


	if (tmf == SNIC_ITMF_LUN_RESET) {
		tmreq = FUNC6(snic, rqi);
		req_id = SCSI_NO_TAG;
	} else {
		tmreq = FUNC4(snic, rqi);
		req_id = tag;
	}

	if (!tmreq) {
		ret = -ENOMEM;

		goto tmreq_err;
	}

	ret = FUNC8(snic, tmreq, sc, tmf, req_id);
	if (ret)
		goto tmreq_err;

	ret = 0;

tmreq_err:
	if (ret) {
		FUNC0(snic->shost,
			      "issu_tmreq: Queing ITMF(%d) Req, sc %p rqi %p req_id %d tag %x fails err = %d\n",
			      tmf, sc, rqi, req_id, tag, ret);
	} else {
		FUNC1(snic->shost,
			      "issu_tmreq: Queuing ITMF(%d) Req, sc %p, rqi %p, req_id %d tag %x - Success.\n",
			      tmf, sc, rqi, req_id, tag);
	}

	FUNC2(&snic->ios_inflight);

	return ret;
}