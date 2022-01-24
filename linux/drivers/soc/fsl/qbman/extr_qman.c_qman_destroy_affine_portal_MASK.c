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
struct qman_portal {struct qm_portal_config* config; } ;
struct qm_portal_config {int cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  affine_mask ; 
 int /*<<< orphan*/  affine_mask_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 struct qman_portal* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct qman_portal*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

const struct qm_portal_config *FUNC6(void)
{
	struct qman_portal *qm = FUNC1();
	const struct qm_portal_config *pcfg;
	int cpu;

	pcfg = qm->config;
	cpu = pcfg->cpu;

	FUNC3(qm);

	FUNC4(&affine_mask_lock);
	FUNC0(cpu, &affine_mask);
	FUNC5(&affine_mask_lock);
	FUNC2();
	return pcfg;
}