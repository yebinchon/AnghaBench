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
typedef  int u32 ;
struct vme_lm_resource {int /*<<< orphan*/  mtx; TYPE_1__* parent; } ;
struct tsi148_driver {scalar_t__ base; } ;
struct TYPE_2__ {struct tsi148_driver* driver_priv; } ;

/* Variables and functions */
 scalar_t__ TSI148_LCSR_LMAT ; 
 int TSI148_LCSR_LMAT_AS_A16 ; 
 int TSI148_LCSR_LMAT_AS_A24 ; 
 int TSI148_LCSR_LMAT_AS_A32 ; 
 int TSI148_LCSR_LMAT_AS_A64 ; 
 int TSI148_LCSR_LMAT_AS_M ; 
 int TSI148_LCSR_LMAT_DATA ; 
 int TSI148_LCSR_LMAT_EN ; 
 int TSI148_LCSR_LMAT_NPRIV ; 
 int TSI148_LCSR_LMAT_PGM ; 
 int TSI148_LCSR_LMAT_SUPR ; 
 scalar_t__ TSI148_LCSR_LMBAL ; 
 scalar_t__ TSI148_LCSR_LMBAU ; 
 int VME_A16 ; 
 int VME_A24 ; 
 int VME_A32 ; 
 int VME_A64 ; 
 int VME_DATA ; 
 int VME_PROG ; 
 int VME_SUPER ; 
 int VME_USER ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int,unsigned long long*) ; 

__attribute__((used)) static int FUNC4(struct vme_lm_resource *lm,
	unsigned long long *lm_base, u32 *aspace, u32 *cycle)
{
	u32 lm_base_high, lm_base_low, lm_ctl, enabled = 0;
	struct tsi148_driver *bridge;

	bridge = lm->parent->driver_priv;

	FUNC1(&lm->mtx);

	lm_base_high = FUNC0(bridge->base + TSI148_LCSR_LMBAU);
	lm_base_low = FUNC0(bridge->base + TSI148_LCSR_LMBAL);
	lm_ctl = FUNC0(bridge->base + TSI148_LCSR_LMAT);

	FUNC3(lm_base_high, lm_base_low, lm_base);

	if (lm_ctl & TSI148_LCSR_LMAT_EN)
		enabled = 1;

	if ((lm_ctl & TSI148_LCSR_LMAT_AS_M) == TSI148_LCSR_LMAT_AS_A16)
		*aspace |= VME_A16;

	if ((lm_ctl & TSI148_LCSR_LMAT_AS_M) == TSI148_LCSR_LMAT_AS_A24)
		*aspace |= VME_A24;

	if ((lm_ctl & TSI148_LCSR_LMAT_AS_M) == TSI148_LCSR_LMAT_AS_A32)
		*aspace |= VME_A32;

	if ((lm_ctl & TSI148_LCSR_LMAT_AS_M) == TSI148_LCSR_LMAT_AS_A64)
		*aspace |= VME_A64;


	if (lm_ctl & TSI148_LCSR_LMAT_SUPR)
		*cycle |= VME_SUPER;
	if (lm_ctl & TSI148_LCSR_LMAT_NPRIV)
		*cycle |= VME_USER;
	if (lm_ctl & TSI148_LCSR_LMAT_PGM)
		*cycle |= VME_PROG;
	if (lm_ctl & TSI148_LCSR_LMAT_DATA)
		*cycle |= VME_DATA;

	FUNC2(&lm->mtx);

	return enabled;
}