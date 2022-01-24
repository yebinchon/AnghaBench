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
struct qm_dqrr {int pi; scalar_t__ pmode; int vbit; int /*<<< orphan*/  fill; int /*<<< orphan*/  ring; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;
struct qm_dqrr_entry {int verb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int QM_DQRR_SIZE ; 
 int QM_DQRR_VERB_VBIT ; 
 int /*<<< orphan*/  FUNC1 (struct qm_dqrr_entry*) ; 
 struct qm_dqrr_entry* FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ qm_dqrr_pvb ; 

__attribute__((used)) static inline void FUNC3(struct qm_portal *portal)
{
	struct qm_dqrr *dqrr = &portal->dqrr;
	struct qm_dqrr_entry *res = FUNC2(dqrr->ring, dqrr->pi);

	FUNC0(dqrr->pmode == qm_dqrr_pvb);
#ifndef CONFIG_FSL_PAMU
	/*
	 * If PAMU is not available we need to invalidate the cache.
	 * When PAMU is available the cache is updated by stash
	 */
	FUNC1(res);
#endif
	if ((res->verb & QM_DQRR_VERB_VBIT) == dqrr->vbit) {
		dqrr->pi = (dqrr->pi + 1) & (QM_DQRR_SIZE - 1);
		if (!dqrr->pi)
			dqrr->vbit ^= QM_DQRR_VERB_VBIT;
		dqrr->fill++;
	}
}