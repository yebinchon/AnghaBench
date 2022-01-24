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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ ce; } ;
struct qm_eqcr {int ci; int ithresh; int pmode; scalar_t__ busy; scalar_t__ available; int /*<<< orphan*/  vbit; scalar_t__ ring; scalar_t__ cursor; } ;
struct qm_portal {TYPE_1__ addr; struct qm_eqcr eqcr; } ;
typedef  enum qm_eqcr_pmode { ____Placeholder_qm_eqcr_pmode } qm_eqcr_pmode ;

/* Variables and functions */
 scalar_t__ QM_CL_EQCR ; 
 int /*<<< orphan*/  QM_CL_EQCR_CI_CENA ; 
 int QM_EQCR_SIZE ; 
 int /*<<< orphan*/  QM_EQCR_VERB_VBIT ; 
 int /*<<< orphan*/  QM_REG_CFG ; 
 int /*<<< orphan*/  QM_REG_EQCR_CI_CINH ; 
 int /*<<< orphan*/  QM_REG_EQCR_ITR ; 
 int /*<<< orphan*/  QM_REG_EQCR_PI_CINH ; 
 scalar_t__ FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qm_portal*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qm_portal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qm_portal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC4(struct qm_portal *portal,
				enum qm_eqcr_pmode pmode,
				unsigned int eq_stash_thresh,
				int eq_stash_prio)
{
	struct qm_eqcr *eqcr = &portal->eqcr;
	u32 cfg;
	u8 pi;

	eqcr->ring = portal->addr.ce + QM_CL_EQCR;
	eqcr->ci = FUNC2(portal, QM_REG_EQCR_CI_CINH) & (QM_EQCR_SIZE - 1);
	FUNC1(portal, QM_CL_EQCR_CI_CENA);
	pi = FUNC2(portal, QM_REG_EQCR_PI_CINH) & (QM_EQCR_SIZE - 1);
	eqcr->cursor = eqcr->ring + pi;
	eqcr->vbit = (FUNC2(portal, QM_REG_EQCR_PI_CINH) & QM_EQCR_SIZE) ?
		     QM_EQCR_VERB_VBIT : 0;
	eqcr->available = QM_EQCR_SIZE - 1 -
			  FUNC0(QM_EQCR_SIZE, eqcr->ci, pi);
	eqcr->ithresh = FUNC2(portal, QM_REG_EQCR_ITR);
#ifdef CONFIG_FSL_DPAA_CHECKING
	eqcr->busy = 0;
	eqcr->pmode = pmode;
#endif
	cfg = (FUNC2(portal, QM_REG_CFG) & 0x00ffffff) |
	      (eq_stash_thresh << 28) | /* QCSP_CFG: EST */
	      (eq_stash_prio << 26) | /* QCSP_CFG: EP */
	      ((pmode & 0x3) << 24); /* QCSP_CFG::EPM */
	FUNC3(portal, QM_REG_CFG, cfg);
	return 0;
}