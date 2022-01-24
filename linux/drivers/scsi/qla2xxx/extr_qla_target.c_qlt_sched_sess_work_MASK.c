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
struct qla_tgt_sess_work_param {int type; int /*<<< orphan*/  sess_works_list_entry; int /*<<< orphan*/  tm_iocb; } ;
struct qla_tgt {int /*<<< orphan*/  sess_work; int /*<<< orphan*/  sess_work_lock; int /*<<< orphan*/  sess_works_list; int /*<<< orphan*/  vha; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct qla_tgt_sess_work_param* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,...) ; 
 int /*<<< orphan*/  ql_dbg_tgt_mgt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct qla_tgt *tgt, int type,
	const void *param, unsigned int param_size)
{
	struct qla_tgt_sess_work_param *prm;
	unsigned long flags;

	prm = FUNC0(sizeof(*prm), GFP_ATOMIC);
	if (!prm) {
		FUNC3(ql_dbg_tgt_mgt, tgt->vha, 0xf050,
		    "qla_target(%d): Unable to create session "
		    "work, command will be refused", 0);
		return -ENOMEM;
	}

	FUNC3(ql_dbg_tgt_mgt, tgt->vha, 0xf00e,
	    "Scheduling work (type %d, prm %p)"
	    " to find session for param %p (size %d, tgt %p)\n",
	    type, prm, param, param_size, tgt);

	prm->type = type;
	FUNC2(&prm->tm_iocb, param, param_size);

	FUNC5(&tgt->sess_work_lock, flags);
	FUNC1(&prm->sess_works_list_entry, &tgt->sess_works_list);
	FUNC6(&tgt->sess_work_lock, flags);

	FUNC4(&tgt->sess_work);

	return 0;
}