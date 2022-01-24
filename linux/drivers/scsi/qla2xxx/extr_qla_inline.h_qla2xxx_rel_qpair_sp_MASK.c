#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qla_qpair {int /*<<< orphan*/  srb_mempool; } ;
struct TYPE_4__ {int /*<<< orphan*/ * qpair; } ;
typedef  TYPE_1__ srb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_qpair*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct qla_qpair *qpair, srb_t *sp)
{
	sp->qpair = NULL;
	FUNC1(sp, qpair->srb_mempool);
	FUNC0(qpair);
}