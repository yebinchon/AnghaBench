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
struct bfa_tskim_s {int tsk_tag; int /*<<< orphan*/  bfa; int /*<<< orphan*/  reqq_wait; } ;
typedef  enum bfa_tskim_event { ____Placeholder_bfa_tskim_event } bfa_tskim_event ;

/* Variables and functions */
#define  BFA_TSKIM_SM_DONE 130 
#define  BFA_TSKIM_SM_HWFAIL 129 
#define  BFA_TSKIM_SM_QRESUME 128 
 int /*<<< orphan*/  __bfa_cb_tskim_failed ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_tskim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_tskim_s*) ; 
 int /*<<< orphan*/  bfa_tskim_sm_cleanup ; 
 int /*<<< orphan*/  bfa_tskim_sm_hcb ; 

__attribute__((used)) static void
FUNC7(struct bfa_tskim_s *tskim,
		enum bfa_tskim_event event)
{
	FUNC3(tskim->bfa, tskim->tsk_tag << 16 | event);

	switch (event) {
	case BFA_TSKIM_SM_DONE:
		FUNC0(&tskim->reqq_wait);
		/* fall through */
	case BFA_TSKIM_SM_QRESUME:
		FUNC2(tskim, bfa_tskim_sm_cleanup);
		FUNC6(tskim);
		break;

	case BFA_TSKIM_SM_HWFAIL:
		FUNC2(tskim, bfa_tskim_sm_hcb);
		FUNC0(&tskim->reqq_wait);
		FUNC4(tskim);
		FUNC5(tskim, __bfa_cb_tskim_failed);
		break;

	default:
		FUNC1(tskim->bfa, event);
	}
}