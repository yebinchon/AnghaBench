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
struct qman_portal {int dummy; } ;
struct qm_portal_config {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct qman_portal** affine_portals ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qm_portal_config* FUNC2 (struct qman_portal*) ; 
 int /*<<< orphan*/  FUNC3 (struct qm_portal_config const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	struct qman_portal *p;
	const struct qm_portal_config *pcfg;

	p = affine_portals[cpu];
	if (p) {
		pcfg = FUNC2(p);
		if (pcfg) {
			FUNC1(pcfg->irq, FUNC0(cpu));
			FUNC3(pcfg, cpu);
		}
	}
	return 0;
}