#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct qla_hw_data {scalar_t__ max_req_queues; scalar_t__ max_rsp_queues; int /*<<< orphan*/  mqenable; } ;
struct qla2xxx_mq_chain {int type; void** qregs; void* count; void* chain_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  rsp_q_out; int /*<<< orphan*/  rsp_q_in; int /*<<< orphan*/  req_q_out; int /*<<< orphan*/  req_q_in; } ;
struct TYPE_5__ {TYPE_1__ isp25mq; } ;
typedef  TYPE_2__ device_reg_t ;

/* Variables and functions */
 int DUMP_CHAIN_MQ ; 
 TYPE_2__* FUNC0 (struct qla_hw_data*,int) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 

__attribute__((used)) static inline void *
FUNC6(struct qla_hw_data *ha, void *ptr, uint32_t **last_chain)
{
	uint32_t cnt, que_idx;
	uint8_t que_cnt;
	struct qla2xxx_mq_chain *mq = ptr;
	device_reg_t *reg;

	if (!ha->mqenable || FUNC3(ha) || FUNC1(ha) ||
	    FUNC2(ha))
		return ptr;

	mq = ptr;
	*last_chain = &mq->type;
	mq->type = FUNC5(DUMP_CHAIN_MQ);
	mq->chain_size = FUNC5(sizeof(struct qla2xxx_mq_chain));

	que_cnt = ha->max_req_queues > ha->max_rsp_queues ?
		ha->max_req_queues : ha->max_rsp_queues;
	mq->count = FUNC5(que_cnt);
	for (cnt = 0; cnt < que_cnt; cnt++) {
		reg = FUNC0(ha, cnt);
		que_idx = cnt * 4;
		mq->qregs[que_idx] =
		    FUNC5(FUNC4(&reg->isp25mq.req_q_in));
		mq->qregs[que_idx+1] =
		    FUNC5(FUNC4(&reg->isp25mq.req_q_out));
		mq->qregs[que_idx+2] =
		    FUNC5(FUNC4(&reg->isp25mq.rsp_q_in));
		mq->qregs[que_idx+3] =
		    FUNC5(FUNC4(&reg->isp25mq.rsp_q_out));
	}

	return ptr + sizeof(struct qla2xxx_mq_chain);
}