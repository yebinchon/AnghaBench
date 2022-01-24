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
struct rsp_que {int dummy; } ;
typedef  struct rsp_que req_que ;
struct qla_hw_data {int max_req_queues; int max_rsp_queues; struct rsp_que** rsp_q_map; int /*<<< orphan*/  hardware_lock; int /*<<< orphan*/  rsp_qid_map; struct rsp_que** req_q_map; int /*<<< orphan*/  req_qid_map; struct rsp_que** base_qpair; struct rsp_que** queue_pair_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rsp_que**) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*,struct rsp_que*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*,struct rsp_que*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct qla_hw_data *ha)
{
	struct req_que *req;
	struct rsp_que *rsp;
	int cnt;
	unsigned long flags;

	if (ha->queue_pair_map) {
		FUNC1(ha->queue_pair_map);
		ha->queue_pair_map = NULL;
	}
	if (ha->base_qpair) {
		FUNC1(ha->base_qpair);
		ha->base_qpair = NULL;
	}

	FUNC4(&ha->hardware_lock, flags);
	for (cnt = 0; cnt < ha->max_req_queues; cnt++) {
		if (!FUNC6(cnt, ha->req_qid_map))
			continue;

		req = ha->req_q_map[cnt];
		FUNC0(cnt, ha->req_qid_map);
		ha->req_q_map[cnt] = NULL;

		FUNC5(&ha->hardware_lock, flags);
		FUNC2(ha, req);
		FUNC4(&ha->hardware_lock, flags);
	}
	FUNC5(&ha->hardware_lock, flags);

	FUNC1(ha->req_q_map);
	ha->req_q_map = NULL;


	FUNC4(&ha->hardware_lock, flags);
	for (cnt = 0; cnt < ha->max_rsp_queues; cnt++) {
		if (!FUNC6(cnt, ha->rsp_qid_map))
			continue;

		rsp = ha->rsp_q_map[cnt];
		FUNC0(cnt, ha->rsp_qid_map);
		ha->rsp_q_map[cnt] =  NULL;
		FUNC5(&ha->hardware_lock, flags);
		FUNC3(ha, rsp);
		FUNC4(&ha->hardware_lock, flags);
	}
	FUNC5(&ha->hardware_lock, flags);

	FUNC1(ha->rsp_q_map);
	ha->rsp_q_map = NULL;
}