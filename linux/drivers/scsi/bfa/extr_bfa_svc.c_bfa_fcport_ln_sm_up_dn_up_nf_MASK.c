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
struct bfa_fcport_ln_s {TYPE_1__* fcport; } ;
typedef  enum bfa_fcport_ln_sm_event { ____Placeholder_bfa_fcport_ln_sm_event } bfa_fcport_ln_sm_event ;
struct TYPE_2__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
#define  BFA_FCPORT_LN_SM_LINKDOWN 129 
#define  BFA_FCPORT_LN_SM_NOTIFICATION 128 
 int /*<<< orphan*/  BFA_PORT_LINKDOWN ; 
 int /*<<< orphan*/  bfa_fcport_ln_sm_dn_up_nf ; 
 int /*<<< orphan*/  bfa_fcport_ln_sm_up_dn_nf ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcport_ln_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcport_ln_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct bfa_fcport_ln_s *ln,
			enum bfa_fcport_ln_sm_event event)
{
	FUNC3(ln->fcport->bfa, event);

	switch (event) {
	case BFA_FCPORT_LN_SM_LINKDOWN:
		FUNC2(ln, bfa_fcport_ln_sm_up_dn_nf);
		break;

	case BFA_FCPORT_LN_SM_NOTIFICATION:
		FUNC2(ln, bfa_fcport_ln_sm_dn_up_nf);
		FUNC0(ln, BFA_PORT_LINKDOWN);
		break;

	default:
		FUNC1(ln->fcport->bfa, event);
	}
}