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
typedef  int /*<<< orphan*/  u32 ;
struct qman_portal {int /*<<< orphan*/  p; struct qman_fq* vdqcr_owned; } ;
struct qman_fq {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  QMAN_FQ_STATE_VDQCR ; 
 scalar_t__ FUNC0 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qman_fq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qman_portal *p, struct qman_fq *fq, u32 vdqcr)
{
	unsigned long irqflags;
	int ret = -EBUSY;

	FUNC3(irqflags);
	if (p->vdqcr_owned)
		goto out;
	if (FUNC0(fq, QMAN_FQ_STATE_VDQCR))
		goto out;

	FUNC1(fq, QMAN_FQ_STATE_VDQCR);
	p->vdqcr_owned = fq;
	FUNC4(&p->p, vdqcr);
	ret = 0;
out:
	FUNC2(irqflags);
	return ret;
}