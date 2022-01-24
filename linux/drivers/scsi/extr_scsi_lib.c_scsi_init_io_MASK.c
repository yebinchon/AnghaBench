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
struct TYPE_2__ {int nents; int /*<<< orphan*/  sgl; } ;
struct scsi_data_buffer {TYPE_1__ table; } ;
struct scsi_cmnd {struct scsi_data_buffer* prot_sdb; int /*<<< orphan*/  sdb; struct request* request; } ;
struct request {int /*<<< orphan*/  q; int /*<<< orphan*/  bio; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 scalar_t__ BLK_STS_IOERR ; 
 scalar_t__ BLK_STS_OK ; 
 scalar_t__ BLK_STS_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SCSI_INLINE_PROT_SG_CNT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

blk_status_t FUNC10(struct scsi_cmnd *cmd)
{
	struct request *rq = cmd->request;
	blk_status_t ret;

	if (FUNC1(!FUNC5(rq)))
		return BLK_STS_IOERR;

	ret = FUNC7(rq, &cmd->sdb);
	if (ret)
		return ret;

	if (FUNC2(rq)) {
		struct scsi_data_buffer *prot_sdb = cmd->prot_sdb;
		int ivecs, count;

		if (FUNC1(!prot_sdb)) {
			/*
			 * This can happen if someone (e.g. multipath)
			 * queues a command to a device on an adapter
			 * that does not support DIX.
			 */
			ret = BLK_STS_IOERR;
			goto out_free_sgtables;
		}

		ivecs = FUNC3(rq->q, rq->bio);

		if (FUNC9(&prot_sdb->table, ivecs,
				prot_sdb->table.sgl,
				SCSI_INLINE_PROT_SG_CNT)) {
			ret = BLK_STS_RESOURCE;
			goto out_free_sgtables;
		}

		count = FUNC4(rq->q, rq->bio,
						prot_sdb->table.sgl);
		FUNC0(count > ivecs);
		FUNC0(count > FUNC6(rq->q));

		cmd->prot_sdb = prot_sdb;
		cmd->prot_sdb->table.nents = count;
	}

	return BLK_STS_OK;
out_free_sgtables:
	FUNC8(cmd);
	return ret;
}