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
typedef  scalar_t__ u8 ;
typedef  size_t u16 ;
struct st_msg_header {int /*<<< orphan*/  handle; void* timeout; scalar_t__ channel; } ;
struct st_hba {int dma_handle; int req_head; int rq_size; int rq_count; scalar_t__ cardtype; scalar_t__ mmio_base; TYPE_3__* ccb; int /*<<< orphan*/  out_req_cnt; } ;
struct scsi_cmnd {TYPE_2__* request; TYPE_1__* device; } ;
struct req_msg {void* tag; } ;
typedef  int dma_addr_t ;
struct TYPE_6__ {int sg_count; struct scsi_cmnd* cmd; struct req_msg* req; } ;
struct TYPE_5__ {size_t timeout; } ;
struct TYPE_4__ {scalar_t__ channel; } ;

/* Variables and functions */
 size_t HZ ; 
 scalar_t__ YH2I_REQ ; 
 scalar_t__ YH2I_REQ_HI ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ st_P3 ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct st_hba *hba, struct req_msg *req, u16 tag)
{
	struct scsi_cmnd *cmd;
	struct st_msg_header *msg_h;
	dma_addr_t addr;

	req->tag = FUNC0(tag);

	hba->ccb[tag].req = req;
	hba->out_req_cnt++;

	cmd = hba->ccb[tag].cmd;
	msg_h = (struct st_msg_header *)req - 1;
	if (FUNC2(cmd)) {
		msg_h->channel = (u8)cmd->device->channel;
		msg_h->timeout = FUNC0(cmd->request->timeout/HZ);
	}
	addr = hba->dma_handle + hba->req_head * hba->rq_size;
	addr += (hba->ccb[tag].sg_count+4)/11;
	msg_h->handle = FUNC1(addr);

	++hba->req_head;
	hba->req_head %= hba->rq_count+1;
	if (hba->cardtype == st_P3) {
		FUNC4((addr >> 16) >> 16, hba->mmio_base + YH2I_REQ_HI);
		FUNC4(addr, hba->mmio_base + YH2I_REQ);
	} else {
		FUNC4((addr >> 16) >> 16, hba->mmio_base + YH2I_REQ_HI);
		FUNC3(hba->mmio_base + YH2I_REQ_HI); /* flush */
		FUNC4(addr, hba->mmio_base + YH2I_REQ);
		FUNC3(hba->mmio_base + YH2I_REQ); /* flush */
	}
}