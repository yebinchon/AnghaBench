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
struct qm_eqcr {int /*<<< orphan*/  ithresh; } ;
struct qm_portal {struct qm_eqcr eqcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  QM_REG_EQCR_ITR ; 
 int /*<<< orphan*/  FUNC0 (struct qm_portal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct qm_portal *portal, u8 ithresh)
{
	struct qm_eqcr *eqcr = &portal->eqcr;

	eqcr->ithresh = ithresh;
	FUNC0(portal, QM_REG_EQCR_ITR, ithresh);
}