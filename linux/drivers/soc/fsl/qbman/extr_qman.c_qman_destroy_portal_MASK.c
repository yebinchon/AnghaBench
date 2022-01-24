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
struct qman_portal {struct qm_portal_config* config; int /*<<< orphan*/  p; int /*<<< orphan*/  cgrs; } ;
struct qm_portal_config {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qman_portal*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct qman_portal *qm)
{
	const struct qm_portal_config *pcfg;

	/* Stop dequeues on the portal */
	FUNC3(&qm->p, 0);

	/*
	 * NB we do this to "quiesce" EQCR. If we add enqueue-completions or
	 * something related to QM_PIRQ_EQCI, this may need fixing.
	 * Also, due to the prefetching model used for CI updates in the enqueue
	 * path, this update will only invalidate the CI cacheline *after*
	 * working on it, so we need to call this twice to ensure a full update
	 * irrespective of where the enqueue processing was at when the teardown
	 * began.
	 */
	FUNC4(&qm->p);
	FUNC4(&qm->p);
	pcfg = qm->config;

	FUNC0(pcfg->irq, qm);

	FUNC1(qm->cgrs);
	FUNC6(&qm->p);
	FUNC7(&qm->p);
	FUNC2(&qm->p);
	FUNC5(&qm->p);

	qm->config = NULL;
}