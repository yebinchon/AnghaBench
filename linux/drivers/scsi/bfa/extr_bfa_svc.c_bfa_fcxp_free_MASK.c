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
struct bfa_fcxp_s {int /*<<< orphan*/  fcxp_tag; struct bfa_fcxp_mod_s* fcxp_mod; } ;
struct bfa_fcxp_mod_s {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct bfa_fcxp_s *fcxp)
{
	struct bfa_fcxp_mod_s *mod = fcxp->fcxp_mod;

	FUNC0(fcxp == NULL);
	FUNC2(mod->bfa, fcxp->fcxp_tag);
	FUNC1(fcxp);
}