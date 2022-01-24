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
struct bfa_s {int dummy; } ;
struct bfa_fcport_s {int dummy; } ;

/* Variables and functions */
 struct bfa_fcport_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  BFA_FCPORT_SM_HWFAIL ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*) ; 

void
FUNC3(struct bfa_s *bfa)
{
	struct bfa_fcport_s *fcport = FUNC0(bfa);

	FUNC1(fcport, BFA_FCPORT_SM_HWFAIL);
	FUNC2(bfa);
}