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
struct snic_req_info {int /*<<< orphan*/  dr_req; int /*<<< orphan*/  abort_req; int /*<<< orphan*/  req; } ;
struct TYPE_5__ {scalar_t__ sense_addr; } ;
struct TYPE_6__ {TYPE_2__ icmnd; } ;
struct snic_host_req {TYPE_3__ u; } ;
struct snic {TYPE_1__* pdev; int /*<<< orphan*/  shost; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int SNIC_DEV_RST_NOTSUP ; 
 int SNIC_DEV_RST_TERM_ISSUED ; 
 scalar_t__ SNIC_IOREQ_ABTS_COMPLETE ; 
 scalar_t__ SNIC_IOREQ_COMPLETE ; 
 scalar_t__ SNIC_IOREQ_LR_COMPLETE ; 
 int SNIC_IO_INTERNAL_TERM_ISSUED ; 
 int SNIC_SCSI_CLEANUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct scsi_cmnd*,int /*<<< orphan*/ ,struct snic_req_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct snic_host_req* FUNC6 (struct snic_req_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct snic*,struct snic_req_info*) ; 

__attribute__((used)) static void
FUNC11(struct snic *snic,
		   struct snic_req_info *rqi,
		   struct scsi_cmnd *sc)
{
	struct snic_host_req *req = FUNC6(rqi);

	/* Freeing cmd without marking completion, not okay */
	FUNC2(!((FUNC1(sc) == SNIC_IOREQ_COMPLETE) ||
		      (FUNC1(sc) == SNIC_IOREQ_ABTS_COMPLETE) ||
		      (FUNC0(sc) & SNIC_DEV_RST_NOTSUP) ||
		      (FUNC0(sc) & SNIC_IO_INTERNAL_TERM_ISSUED) ||
		      (FUNC0(sc) & SNIC_DEV_RST_TERM_ISSUED) ||
		      (FUNC0(sc) & SNIC_SCSI_CLEANUP) ||
		      (FUNC1(sc) == SNIC_IOREQ_LR_COMPLETE)));

	FUNC3(snic->shost,
		      "Rel_req:sc %p:tag %x:rqi %p:ioreq %p:abt %p:dr %p: state %s:flags 0x%llx\n",
		      sc, FUNC8(sc), rqi, rqi->req, rqi->abort_req,
		      rqi->dr_req, FUNC9(FUNC1(sc)),
		      FUNC0(sc));

	if (req->u.icmnd.sense_addr)
		FUNC4(&snic->pdev->dev,
				 FUNC5(req->u.icmnd.sense_addr),
				 SCSI_SENSE_BUFFERSIZE,
				 DMA_FROM_DEVICE);

	FUNC7(sc);

	FUNC10(snic, rqi);
}