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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct snic_sg_desc {scalar_t__ _resvd; int /*<<< orphan*/  len; void* addr; } ;
struct TYPE_3__ {void* sg_addr; int /*<<< orphan*/  sg_cnt; } ;
struct TYPE_4__ {TYPE_1__ rpt_tgts; } ;
struct snic_host_req {TYPE_2__ u; int /*<<< orphan*/  hdr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_NO_TAG ; 
 int /*<<< orphan*/  SNIC_REQ_REPORT_TGTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct snic_sg_desc* FUNC3 (struct snic_host_req*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct snic_host_req *req, u32 hid, u8 *buf, u32 len,
		     dma_addr_t rsp_buf_pa, ulong ctx)
{
	struct snic_sg_desc *sgd = NULL;


	FUNC4(&req->hdr, SNIC_REQ_REPORT_TGTS, 0, SCSI_NO_TAG, hid,
			1, ctx);

	req->u.rpt_tgts.sg_cnt = FUNC0(1);
	sgd = FUNC3(req);
	sgd[0].addr = FUNC2(rsp_buf_pa);
	sgd[0].len = FUNC1(len);
	sgd[0]._resvd = 0;
	req->u.rpt_tgts.sg_addr = FUNC2((ulong)sgd);
}