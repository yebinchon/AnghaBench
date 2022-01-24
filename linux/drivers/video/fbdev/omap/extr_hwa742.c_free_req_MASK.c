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
struct hwa742_request {int flags; int /*<<< orphan*/  entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  req_lock; int /*<<< orphan*/  req_sema; int /*<<< orphan*/  free_req_list; } ;

/* Variables and functions */
 int REQ_FROM_IRQ_POOL ; 
 TYPE_1__ hwa742 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct hwa742_request *req)
{
	unsigned long flags;

	FUNC1(&hwa742.req_lock, flags);

	FUNC0(&req->entry, &hwa742.free_req_list);
	if (!(req->flags & REQ_FROM_IRQ_POOL))
		FUNC3(&hwa742.req_sema);

	FUNC2(&hwa742.req_lock, flags);
}