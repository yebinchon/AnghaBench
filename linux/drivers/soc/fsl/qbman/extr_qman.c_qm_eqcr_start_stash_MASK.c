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
typedef  int u8 ;
struct qm_eqcr {int busy; int available; int ci; struct qm_eqcr_entry* cursor; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QM_CL_EQCR_CI_CENA ; 
 int QM_EQCR_SIZE ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qm_eqcr_entry*) ; 
 int FUNC3 (struct qm_portal*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct qm_eqcr_entry *FUNC4(struct qm_portal
								*portal)
{
	struct qm_eqcr *eqcr = &portal->eqcr;
	u8 diff, old_ci;

	FUNC0(!eqcr->busy);
	if (!eqcr->available) {
		old_ci = eqcr->ci;
		eqcr->ci = FUNC3(portal, QM_CL_EQCR_CI_CENA) &
			   (QM_EQCR_SIZE - 1);
		diff = FUNC1(QM_EQCR_SIZE, old_ci, eqcr->ci);
		eqcr->available += diff;
		if (!diff)
			return NULL;
	}
#ifdef CONFIG_FSL_DPAA_CHECKING
	eqcr->busy = 1;
#endif
	FUNC2(eqcr->cursor);
	return eqcr->cursor;
}