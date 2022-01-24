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
struct bfa_rport_s {int /*<<< orphan*/  rport_tag; } ;
struct bfa_itnim_s {void* ditn; struct bfa_rport_s* rport; } ;
struct bfa_fcpim_s {int dummy; } ;

/* Variables and functions */
 struct bfa_fcpim_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_itnim_s* FUNC1 (struct bfa_fcpim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BFA_ITNIM_SM_CREATE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_s*,struct bfa_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_itnim_isr ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_itnim_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  creates ; 

struct bfa_itnim_s *
FUNC6(struct bfa_s *bfa, struct bfa_rport_s *rport, void *ditn)
{
	struct bfa_fcpim_s *fcpim = FUNC0(bfa);
	struct bfa_itnim_s *itnim;

	FUNC3(bfa, rport, bfa_itnim_isr);

	itnim = FUNC1(fcpim, rport->rport_tag);
	FUNC2(itnim->rport != rport);

	itnim->ditn = ditn;

	FUNC5(itnim, creates);
	FUNC4(itnim, BFA_ITNIM_SM_CREATE);

	return itnim;
}