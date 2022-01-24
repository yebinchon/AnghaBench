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
struct esas2r_request {int dummy; } ;
struct esas2r_adapter {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct esas2r_adapter *a,
					   struct esas2r_request *rq)
{
	unsigned long flags;

	FUNC0(a, rq);

	FUNC2(&a->queue_lock, flags);
	FUNC1(a, rq);
	FUNC3(&a->queue_lock, flags);
}