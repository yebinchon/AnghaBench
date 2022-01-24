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
struct TYPE_2__ {int /*<<< orphan*/  port; } ;
struct bfa_s {TYPE_1__ modules; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  BFA_FCPORT_SM_DPORTENABLE ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bfa_s *bfa)
{
	/*
	 * Assume caller check for port is in disable state
	 */
	FUNC2(FUNC0(bfa), BFA_FCPORT_SM_DPORTENABLE);
	FUNC1(&bfa->modules.port, BFA_TRUE);
}