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
struct airq_struct {size_t isc; int lsi_mask; int /*<<< orphan*/  list; int /*<<< orphan*/  flags; scalar_t__ lsi_ptr; int /*<<< orphan*/  handler; } ;
typedef  int /*<<< orphan*/  dbf_txt ;

/* Variables and functions */
 int /*<<< orphan*/  AIRQ_PTR_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MAX_ISC ; 
 int /*<<< orphan*/ * airq_lists ; 
 int /*<<< orphan*/  airq_lists_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,struct airq_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct airq_struct *airq)
{
	char dbf_txt[32];

	if (!airq->handler || airq->isc > MAX_ISC)
		return -EINVAL;
	if (!airq->lsi_ptr) {
		airq->lsi_ptr = FUNC3(1, GFP_KERNEL);
		if (!airq->lsi_ptr)
			return -ENOMEM;
		airq->flags |= AIRQ_PTR_ALLOCATED;
	}
	if (!airq->lsi_mask)
		airq->lsi_mask = 0xff;
	FUNC4(dbf_txt, sizeof(dbf_txt), "rairq:%p", airq);
	FUNC0(4, dbf_txt);
	FUNC2(airq->isc);
	FUNC5(&airq_lists_lock);
	FUNC1(&airq->list, &airq_lists[airq->isc]);
	FUNC6(&airq_lists_lock);
	return 0;
}