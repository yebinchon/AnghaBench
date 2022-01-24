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
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sm_list; } ;
struct csio_ioreq {TYPE_1__ sm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIO_SCSIE_COMPLETED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static inline void
FUNC3(struct csio_ioreq *ioreq, struct list_head *cbfn_q)
{
	FUNC1(&ioreq->sm, CSIO_SCSIE_COMPLETED);
	if (FUNC0(&ioreq->sm.sm_list))
		FUNC2(&ioreq->sm.sm_list, cbfn_q);
}