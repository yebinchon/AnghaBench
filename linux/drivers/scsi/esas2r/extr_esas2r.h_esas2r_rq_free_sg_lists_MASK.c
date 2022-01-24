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
struct esas2r_request {int /*<<< orphan*/  sg_table_head; } ;
struct esas2r_adapter {int /*<<< orphan*/  sg_list_lock; int /*<<< orphan*/  free_sg_list_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct esas2r_request *rq,
					   struct esas2r_adapter *a)
{
	unsigned long flags;

	if (FUNC0(&rq->sg_table_head))
		return;

	FUNC2(&a->sg_list_lock, flags);
	FUNC1(&rq->sg_table_head, &a->free_sg_list_head);
	FUNC3(&a->sg_list_lock, flags);
}