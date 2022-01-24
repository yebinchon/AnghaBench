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
struct ca91cx42_driver {scalar_t__ base; int /*<<< orphan*/ ** lm_data; int /*<<< orphan*/ ** lm_callback; } ;
struct TYPE_2__ {struct ca91cx42_driver* driver_priv; } ;

/* Variables and functions */
 int* CA91CX42_LINT_LM ; 
 int CA91CX42_LINT_LM0 ; 
 int CA91CX42_LINT_LM1 ; 
 int CA91CX42_LINT_LM2 ; 
 int CA91CX42_LINT_LM3 ; 
 int CA91CX42_LM_CTL_EN ; 
 scalar_t__ LINT_EN ; 
 scalar_t__ LINT_STAT ; 
 scalar_t__ LM_CTL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct vme_lm_resource *lm, int monitor)
{
	u32 tmp;
	struct ca91cx42_driver *bridge;

	bridge = lm->parent->driver_priv;

	FUNC2(&lm->mtx);

	/* Disable Location Monitor and ensure previous interrupts are clear */
	tmp = FUNC0(bridge->base + LINT_EN);
	tmp &= ~CA91CX42_LINT_LM[monitor];
	FUNC1(tmp, bridge->base + LINT_EN);

	FUNC1(CA91CX42_LINT_LM[monitor],
		 bridge->base + LINT_STAT);

	/* Detach callback */
	bridge->lm_callback[monitor] = NULL;
	bridge->lm_data[monitor] = NULL;

	/* If all location monitors disabled, disable global Location Monitor */
	if ((tmp & (CA91CX42_LINT_LM0 | CA91CX42_LINT_LM1 | CA91CX42_LINT_LM2 |
			CA91CX42_LINT_LM3)) == 0) {
		tmp = FUNC0(bridge->base + LM_CTL);
		tmp &= ~CA91CX42_LM_CTL_EN;
		FUNC1(tmp, bridge->base + LM_CTL);
	}

	FUNC3(&lm->mtx);

	return 0;
}