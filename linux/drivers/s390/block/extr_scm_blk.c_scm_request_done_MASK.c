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
typedef  scalar_t__ u64 ;
struct scm_request {int /*<<< orphan*/  list; TYPE_1__* aob; scalar_t__* request; } ;
struct msb {int flags; scalar_t__ data_addr; } ;
struct TYPE_2__ {struct msb* msb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int MSB_FLAG_IDA ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  aidaw_pool ; 
 int /*<<< orphan*/  inactive_requests ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int nr_requests_per_io ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct scm_request *scmrq)
{
	unsigned long flags;
	struct msb *msb;
	u64 aidaw;
	int i;

	for (i = 0; i < nr_requests_per_io && scmrq->request[i]; i++) {
		msb = &scmrq->aob->msb[i];
		aidaw = msb->data_addr;

		if ((msb->flags & MSB_FLAG_IDA) && aidaw &&
		    FUNC0(aidaw, PAGE_SIZE))
			FUNC2(FUNC5(aidaw), aidaw_pool);
	}

	FUNC3(&list_lock, flags);
	FUNC1(&scmrq->list, &inactive_requests);
	FUNC4(&list_lock, flags);
}