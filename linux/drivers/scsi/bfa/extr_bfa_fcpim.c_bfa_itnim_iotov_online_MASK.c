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
struct bfa_itnim_s {int /*<<< orphan*/  io_q; int /*<<< orphan*/  pending_q; } ;
struct bfa_ioim_s {int /*<<< orphan*/  qe; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_itnim_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bfa_ioim_s**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bfa_itnim_s *itnim)
{
	struct bfa_ioim_s *ioim;

	FUNC2(itnim);

	/*
	 * Abort all inflight IO requests in the queue
	 */
	FUNC1(itnim, BFA_FALSE);

	/*
	 * Start all pending IO requests.
	 */
	while (!FUNC5(&itnim->pending_q)) {
		FUNC3(&itnim->pending_q, &ioim);
		FUNC4(&ioim->qe, &itnim->io_q);
		FUNC0(ioim);
	}
}