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
struct qman_portal {int /*<<< orphan*/  mr_work; int /*<<< orphan*/  p; int /*<<< orphan*/  congestion_work; } ;

/* Variables and functions */
 int QM_PIRQ_CSCI ; 
 int QM_PIRQ_EQRI ; 
 int QM_PIRQ_MRI ; 
 int /*<<< orphan*/  affine_queue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qm_portal_wq ; 
 int /*<<< orphan*/  FUNC2 (struct qman_portal*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC6(struct qman_portal *p, u32 is)
{
	if (is & QM_PIRQ_CSCI) {
		FUNC2(p, QM_PIRQ_CSCI);
		FUNC3(FUNC4(), qm_portal_wq,
			      &p->congestion_work);
	}

	if (is & QM_PIRQ_EQRI) {
		FUNC0(&p->p);
		FUNC1(&p->p, 0);
		FUNC5(&affine_queue);
	}

	if (is & QM_PIRQ_MRI) {
		FUNC2(p, QM_PIRQ_MRI);
		FUNC3(FUNC4(), qm_portal_wq,
			      &p->mr_work);
	}

	return is;
}