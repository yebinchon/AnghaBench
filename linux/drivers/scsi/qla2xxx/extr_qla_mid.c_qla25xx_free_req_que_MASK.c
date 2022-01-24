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
typedef  int uint16_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct req_que {int id; int length; struct req_que* outstanding_cmds; scalar_t__ dma; int /*<<< orphan*/ * ring; } ;
struct qla_hw_data {int /*<<< orphan*/  vport_lock; int /*<<< orphan*/  req_qid_map; int /*<<< orphan*/ ** req_q_map; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  request_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct req_que*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct scsi_qla_host *vha, struct req_que *req)
{
	struct qla_hw_data *ha = vha->hw;
	uint16_t que_id = req->id;

	FUNC1(&ha->pdev->dev, (req->length + 1) *
		sizeof(request_t), req->ring, req->dma);
	req->ring = NULL;
	req->dma = 0;
	if (que_id) {
		ha->req_q_map[que_id] = NULL;
		FUNC3(&ha->vport_lock);
		FUNC0(que_id, ha->req_qid_map);
		FUNC4(&ha->vport_lock);
	}
	FUNC2(req->outstanding_cmds);
	FUNC2(req);
	req = NULL;
}