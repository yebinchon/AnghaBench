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
typedef  int uint16_t ;
struct srb {int dummy; } ;
struct scsi_qla_host {int request_dma; int response_dma; scalar_t__ rsp_ring_index; int /*<<< orphan*/  response_ring; int /*<<< orphan*/  response_ring_ptr; void* req_q_cnt; scalar_t__ req_ring_index; int /*<<< orphan*/  request_ring; int /*<<< orphan*/  request_ring_ptr; int /*<<< orphan*/  outstanding_cmds; } ;

/* Variables and functions */
 int BIT_0 ; 
 int BIT_1 ; 
 int BIT_2 ; 
 int BIT_3 ; 
 int BIT_4 ; 
 int BIT_5 ; 
 int BIT_6 ; 
 int BIT_7 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAILBOX_REGISTER_COUNT ; 
 int MAX_OUTSTANDING_COMMANDS ; 
 int MBC_INIT_REQUEST_QUEUE_A64 ; 
 int MBC_INIT_RESPONSE_QUEUE_A64 ; 
 void* REQUEST_ENTRY_CNT ; 
 int RESPONSE_ENTRY_CNT ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct scsi_qla_host*,int,int*) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct scsi_qla_host *ha)
{
	uint16_t mb[MAILBOX_REGISTER_COUNT];
	int status = 0;

	FUNC0("qla1280_init_rings");

	/* Clear outstanding commands array. */
	FUNC3(ha->outstanding_cmds, 0,
	       sizeof(struct srb *) * MAX_OUTSTANDING_COMMANDS);

	/* Initialize request queue. */
	ha->request_ring_ptr = ha->request_ring;
	ha->req_ring_index = 0;
	ha->req_q_cnt = REQUEST_ENTRY_CNT;
	/* mb[0] = MBC_INIT_REQUEST_QUEUE; */
	mb[0] = MBC_INIT_REQUEST_QUEUE_A64;
	mb[1] = REQUEST_ENTRY_CNT;
	mb[3] = ha->request_dma & 0xffff;
	mb[2] = (ha->request_dma >> 16) & 0xffff;
	mb[4] = 0;
	mb[7] = FUNC5(ha->request_dma) & 0xffff;
	mb[6] = FUNC5(ha->request_dma) >> 16;
	if (!(status = FUNC4(ha, BIT_7 | BIT_6 | BIT_4 |
					       BIT_3 | BIT_2 | BIT_1 | BIT_0,
					       &mb[0]))) {
		/* Initialize response queue. */
		ha->response_ring_ptr = ha->response_ring;
		ha->rsp_ring_index = 0;
		/* mb[0] = MBC_INIT_RESPONSE_QUEUE; */
		mb[0] = MBC_INIT_RESPONSE_QUEUE_A64;
		mb[1] = RESPONSE_ENTRY_CNT;
		mb[3] = ha->response_dma & 0xffff;
		mb[2] = (ha->response_dma >> 16) & 0xffff;
		mb[5] = 0;
		mb[7] = FUNC5(ha->response_dma) & 0xffff;
		mb[6] = FUNC5(ha->response_dma) >> 16;
		status = FUNC4(ha, BIT_7 | BIT_6 | BIT_5 |
						 BIT_3 | BIT_2 | BIT_1 | BIT_0,
						 &mb[0]);
	}

	if (status)
		FUNC2(2, "qla1280_init_rings: **** FAILED ****\n");

	FUNC1("qla1280_init_rings");
	return status;
}