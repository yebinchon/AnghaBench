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
struct bman_portal {int dummy; } ;
struct bm_portal_config {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct bman_portal** affine_bportals ; 
 struct bm_portal_config* FUNC0 (struct bman_portal*) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	struct bman_portal *p = affine_bportals[cpu];
	const struct bm_portal_config *pcfg;

	if (!p)
		return 0;

	pcfg = FUNC0(p);
	if (!pcfg)
		return 0;

	/* use any other online CPU */
	cpu = FUNC1(cpu_online_mask, cpu);
	FUNC3(pcfg->irq, FUNC2(cpu));
	return 0;
}