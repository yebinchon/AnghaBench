#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct req_que {scalar_t__ ring_index; scalar_t__ length; int /*<<< orphan*/ * req_q_in; int /*<<< orphan*/  ring_ptr; int /*<<< orphan*/  ring; int /*<<< orphan*/  id; } ;
struct qla_hw_data {int /*<<< orphan*/  rqstq_intr_code; TYPE_2__* iobase; scalar_t__ mqenable; } ;
struct TYPE_10__ {int /*<<< orphan*/  req_q_in; } ;
struct TYPE_9__ {int /*<<< orphan*/  req_q_in; } ;
struct TYPE_11__ {int /*<<< orphan*/  isp; TYPE_4__ isp24; TYPE_3__ ispfx00; } ;
typedef  TYPE_5__ device_reg_t ;
struct TYPE_7__ {int /*<<< orphan*/  hccr; } ;
struct TYPE_8__ {TYPE_1__ isp24; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*) ; 
 scalar_t__ FUNC7 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_qla_host*) ; 

void
FUNC14(struct scsi_qla_host *vha, struct req_que *req)
{
	struct qla_hw_data *ha = vha->hw;
	device_reg_t *reg = FUNC0(ha, req->id);

	if (FUNC3(ha)) {
		FUNC13(vha);
	} else {
		/* Adjust ring index. */
		req->ring_index++;
		if (req->ring_index == req->length) {
			req->ring_index = 0;
			req->ring_ptr = req->ring;
		} else
			req->ring_ptr++;

		/* Set chip new ring index. */
		if (ha->mqenable || FUNC4(ha) || FUNC5(ha)) {
			FUNC11(req->req_q_in, req->ring_index);
		} else if (FUNC6(ha)) {
			FUNC11(req->req_q_in, req->ring_index);
			FUNC9(&ha->iobase->isp24.hccr);
		} else if (FUNC7(ha)) {
			FUNC11(&reg->ispfx00.req_q_in, req->ring_index);
			FUNC9(&reg->ispfx00.req_q_in);
			FUNC8(ha, ha->rqstq_intr_code);
		} else if (FUNC2(ha)) {
			FUNC11(&reg->isp24.req_q_in, req->ring_index);
			FUNC9(&reg->isp24.req_q_in);
		} else {
			FUNC12(FUNC1(ha, &reg->isp),
				req->ring_index);
			FUNC10(FUNC1(ha, &reg->isp));
		}
	}
}