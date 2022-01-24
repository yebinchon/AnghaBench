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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  u32 ;
struct snic_req_info {int dummy; } ;
struct TYPE_5__ {void* os_type; void* drvr_ver; } ;
struct TYPE_6__ {TYPE_2__ exch_ver; } ;
struct snic_host_req {TYPE_3__ u; int /*<<< orphan*/  hdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  hid; } ;
struct snic {int /*<<< orphan*/  shost; TYPE_1__ config; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SCSI_NO_TAG ; 
 int /*<<< orphan*/  SNIC_DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SNIC_OS_LINUX ; 
 int /*<<< orphan*/  SNIC_REQ_EXCH_VER ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct snic_host_req* FUNC3 (struct snic_req_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct snic*,struct snic_req_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snic*,struct snic_host_req*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snic*,struct snic_req_info*) ; 
 struct snic_req_info* FUNC8 (struct snic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(struct snic *snic)
{
	struct snic_req_info *rqi = NULL;
	struct snic_host_req *req = NULL;
	u32 ver = 0;
	int ret = 0;

	FUNC1(snic->shost, "Exch Ver Req Preparing...\n");

	rqi = FUNC8(snic, 0);
	if (!rqi) {
		FUNC0(snic->shost,
			      "Queuing Exch Ver Req failed, err = %d\n",
			      ret);

		ret = -ENOMEM;
		goto error;
	}

	req = FUNC3(rqi);

	/* Initialize snic_host_req */
	FUNC5(&req->hdr, SNIC_REQ_EXCH_VER, 0, SCSI_NO_TAG,
			snic->config.hid, 0, (ulong)rqi);
	ver = FUNC9(SNIC_DRV_VERSION);
	req->u.exch_ver.drvr_ver = FUNC2(ver);
	req->u.exch_ver.os_type = FUNC2(SNIC_OS_LINUX);

	FUNC4(snic, rqi);

	ret = FUNC6(snic, req, sizeof(*req));
	if (ret) {
		FUNC7(snic, rqi);
		FUNC0(snic->shost,
			      "Queuing Exch Ver Req failed, err = %d\n",
			      ret);
		goto error;
	}

	FUNC1(snic->shost, "Exch Ver Req is issued. ret = %d\n", ret);

error:
	return ret;
}