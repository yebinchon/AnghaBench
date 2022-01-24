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
struct qla_tgt {scalar_t__ sess_count; int /*<<< orphan*/  vha; struct qla_hw_data* ha; } ;
struct TYPE_2__ {int /*<<< orphan*/  sess_lock; } ;
struct qla_hw_data {TYPE_1__ tgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct qla_tgt*,scalar_t__) ; 
 int /*<<< orphan*/  ql_dbg_tgt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct qla_tgt *tgt)
{
	struct qla_hw_data *ha = tgt->ha;
	unsigned long flags;
	int res;
	/*
	 * We need to protect against race, when tgt is freed before or
	 * inside wake_up()
	 */
	FUNC1(&ha->tgt.sess_lock, flags);
	FUNC0(ql_dbg_tgt, tgt->vha, 0xe002,
	    "tgt %p, sess_count=%d\n",
	    tgt, tgt->sess_count);
	res = (tgt->sess_count == 0);
	FUNC2(&ha->tgt.sess_lock, flags);

	return res;
}