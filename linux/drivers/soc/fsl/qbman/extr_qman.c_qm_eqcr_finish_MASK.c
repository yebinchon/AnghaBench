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
typedef  scalar_t__ u8 ;
struct qm_eqcr {scalar_t__ ci; int /*<<< orphan*/  cursor; int /*<<< orphan*/  busy; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int QM_EQCR_SIZE ; 
 int /*<<< orphan*/  QM_REG_EQCR_CI_CINH ; 
 int /*<<< orphan*/  QM_REG_EQCR_PI_CINH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct qm_portal*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct qm_portal *portal)
{
	struct qm_eqcr *eqcr = &portal->eqcr;
	u8 pi = FUNC3(portal, QM_REG_EQCR_PI_CINH) & (QM_EQCR_SIZE - 1);
	u8 ci = FUNC3(portal, QM_REG_EQCR_CI_CINH) & (QM_EQCR_SIZE - 1);

	FUNC0(!eqcr->busy);
	if (pi != FUNC1(eqcr->cursor))
		FUNC2("losing uncommitted EQCR entries\n");
	if (ci != eqcr->ci)
		FUNC2("missing existing EQCR completions\n");
	if (eqcr->ci != FUNC1(eqcr->cursor))
		FUNC2("EQCR destroyed unquiesced\n");
}