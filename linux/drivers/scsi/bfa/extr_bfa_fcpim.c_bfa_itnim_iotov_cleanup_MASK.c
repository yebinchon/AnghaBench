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
struct bfa_itnim_s {int /*<<< orphan*/  pending_q; } ;
struct bfa_ioim_s {TYPE_1__* fcpim; int /*<<< orphan*/  qe; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioim_comp_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfa_ioim_s**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bfa_itnim_s *itnim)
{
	struct bfa_ioim_s *ioim;

	/*
	 * Fail all inflight IO requests in the queue
	 */
	FUNC1(itnim, BFA_TRUE);

	/*
	 * Fail any pending IO requests.
	 */
	while (!FUNC4(&itnim->pending_q)) {
		FUNC2(&itnim->pending_q, &ioim);
		FUNC3(&ioim->qe, &ioim->fcpim->ioim_comp_q);
		FUNC0(ioim);
	}
}