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
typedef  int /*<<< orphan*/  u8 ;
struct list_head {int /*<<< orphan*/  qe; int /*<<< orphan*/  status; int /*<<< orphan*/  bfa_tag; struct bfa_s* bfa; } ;
struct bfa_s {int dummy; } ;
struct bfa_lps_s {int /*<<< orphan*/  qe; int /*<<< orphan*/  status; int /*<<< orphan*/  bfa_tag; struct bfa_s* bfa; } ;
struct bfa_lps_mod_s {int /*<<< orphan*/  lps_active_q; } ;

/* Variables and functions */
 struct bfa_lps_mod_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  BFA_LPS_SM_FWRSP ; 
 struct list_head* FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bfa_lps_s *first_lps, u8 count)
{
	struct bfa_s		*bfa = first_lps->bfa;
	struct bfa_lps_mod_s	*mod = FUNC0(bfa);
	struct list_head	*qe, *qe_next;
	struct bfa_lps_s	*lps;

	FUNC3(bfa, count);

	qe = FUNC1(first_lps);

	while (count && qe) {
		qe_next = FUNC1(qe);
		lps = (struct bfa_lps_s *)qe;
		FUNC3(bfa, lps->bfa_tag);
		lps->status = first_lps->status;
		FUNC5(&lps->qe);
		FUNC4(&lps->qe, &mod->lps_active_q);
		FUNC2(lps, BFA_LPS_SM_FWRSP);
		qe = qe_next;
		count--;
	}
}