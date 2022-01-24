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
struct qm_eqcr {scalar_t__ pmode; int vbit; scalar_t__ busy; int /*<<< orphan*/  available; struct qm_eqcr_entry* cursor; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;
struct qm_eqcr_entry {int _ncw_verb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct qm_eqcr_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct qm_eqcr*) ; 
 int /*<<< orphan*/  FUNC4 (struct qm_eqcr*) ; 
 scalar_t__ qm_eqcr_pvb ; 

__attribute__((used)) static inline void FUNC5(struct qm_portal *portal, u8 myverb)
{
	struct qm_eqcr *eqcr = &portal->eqcr;
	struct qm_eqcr_entry *eqcursor;

	FUNC3(eqcr);
	FUNC0(eqcr->pmode == qm_eqcr_pvb);
	FUNC1();
	eqcursor = eqcr->cursor;
	eqcursor->_ncw_verb = myverb | eqcr->vbit;
	FUNC2(eqcursor);
	FUNC4(eqcr);
	eqcr->available--;
#ifdef CONFIG_FSL_DPAA_CHECKING
	eqcr->busy = 0;
#endif
}