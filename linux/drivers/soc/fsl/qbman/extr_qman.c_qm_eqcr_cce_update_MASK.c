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
struct qm_eqcr {int ci; int /*<<< orphan*/  available; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  QM_CL_EQCR_CI_CENA ; 
 int QM_EQCR_SIZE ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (struct qm_portal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qm_portal*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u8 FUNC3(struct qm_portal *portal)
{
	struct qm_eqcr *eqcr = &portal->eqcr;
	u8 diff, old_ci = eqcr->ci;

	eqcr->ci = FUNC1(portal, QM_CL_EQCR_CI_CENA) & (QM_EQCR_SIZE - 1);
	FUNC2(portal, QM_CL_EQCR_CI_CENA);
	diff = FUNC0(QM_EQCR_SIZE, old_ci, eqcr->ci);
	eqcr->available += diff;
	return diff;
}