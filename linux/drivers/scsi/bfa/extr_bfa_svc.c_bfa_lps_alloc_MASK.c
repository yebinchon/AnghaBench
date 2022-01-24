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
struct bfa_s {int dummy; } ;
struct bfa_lps_s {int /*<<< orphan*/  qe; } ;
struct bfa_lps_mod_s {int /*<<< orphan*/  lps_active_q; int /*<<< orphan*/  lps_free_q; } ;

/* Variables and functions */
 struct bfa_lps_mod_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  bfa_lps_sm_init ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bfa_lps_s**) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct bfa_lps_s  *
FUNC4(struct bfa_s *bfa)
{
	struct bfa_lps_mod_s	*mod = FUNC0(bfa);
	struct bfa_lps_s	*lps = NULL;

	FUNC1(&mod->lps_free_q, &lps);

	if (lps == NULL)
		return NULL;

	FUNC3(&lps->qe, &mod->lps_active_q);

	FUNC2(lps, bfa_lps_sm_init);
	return lps;
}