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
typedef  int u32 ;
struct bman_portal {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int BM_PIRQ_RCRI ; 
 int /*<<< orphan*/  BM_REG_ISR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct bman_portal *p, u32 is)
{
	u32 ret = is;

	if (is & BM_PIRQ_RCRI) {
		FUNC2(&p->p);
		FUNC3(&p->p, 0);
		FUNC1(&p->p, BM_REG_ISR, BM_PIRQ_RCRI);
		is &= ~BM_PIRQ_RCRI;
	}

	/* There should be no status register bits left undefined */
	FUNC0(!is);
	return ret;
}