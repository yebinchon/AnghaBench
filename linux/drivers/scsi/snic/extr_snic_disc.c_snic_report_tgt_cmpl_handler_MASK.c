#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ulong ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct snic_tgt_id {int /*<<< orphan*/  tgt_id; } ;
struct snic_req_info {scalar_t__ sge_va; } ;
struct TYPE_6__ {int /*<<< orphan*/  tgt_cnt; } ;
struct TYPE_7__ {TYPE_1__ rpt_tgts_cmpl; } ;
struct snic_fw_req {TYPE_2__ u; int /*<<< orphan*/  hdr; } ;
struct TYPE_9__ {int rtgt_cnt; int /*<<< orphan*/ * rtgt_info; } ;
struct TYPE_8__ {int max_tgts; } ;
struct snic {int /*<<< orphan*/  tgt_work; TYPE_4__ disc; int /*<<< orphan*/  shost; TYPE_3__ fwinfo; } ;
struct TYPE_10__ {int /*<<< orphan*/  event_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snic_tgt_id*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* snic_glob ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct snic*,struct snic_req_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct snic*,struct snic_req_info*) ; 

int
FUNC9(struct snic *snic, struct snic_fw_req *fwreq)
{

	u8 typ, cmpl_stat;
	u32 cmnd_id, hid, tgt_cnt = 0;
	ulong ctx;
	struct snic_req_info *rqi = NULL;
	struct snic_tgt_id *tgtid;
	int i, ret = 0;

	FUNC6(&fwreq->hdr, &typ, &cmpl_stat, &cmnd_id, &hid, &ctx);
	rqi = (struct snic_req_info *) ctx;
	tgtid = (struct snic_tgt_id *) rqi->sge_va;

	tgt_cnt = FUNC4(fwreq->u.rpt_tgts_cmpl.tgt_cnt);
	if (tgt_cnt == 0) {
		FUNC1(snic->shost, "No Targets Found on this host.\n");
		ret = 1;

		goto end;
	}

	/* printing list of targets here */
	FUNC2(snic->shost, "Target Count = %d\n", tgt_cnt);

	FUNC0(tgt_cnt > snic->fwinfo.max_tgts);

	for (i = 0; i < tgt_cnt; i++)
		FUNC2(snic->shost,
			       "Tgt id = 0x%x\n",
			       FUNC4(tgtid[i].tgt_id));

	/*
	 * Queue work for further processing,
	 * Response Buffer Memory is freed after creating targets
	 */
	snic->disc.rtgt_cnt = tgt_cnt;
	snic->disc.rtgt_info = (u8 *) tgtid;
	FUNC5(snic_glob->event_q, &snic->tgt_work);
	ret = 0;

end:
	/* Unmap Response Buffer */
	FUNC7(snic, rqi);
	if (ret)
		FUNC3(tgtid);

	rqi->sge_va = 0;
	FUNC8(snic, rqi);

	return ret;
}