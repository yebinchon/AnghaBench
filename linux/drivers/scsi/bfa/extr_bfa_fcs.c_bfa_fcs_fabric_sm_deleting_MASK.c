#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pwwn; } ;
struct TYPE_6__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_3__* fcs; TYPE_2__ bport; } ;
typedef  enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_7__ {int /*<<< orphan*/  wc; } ;

/* Variables and functions */
#define  BFA_FCS_FABRIC_SM_DELCOMP 130 
#define  BFA_FCS_FABRIC_SM_LINK_DOWN 129 
#define  BFA_FCS_FABRIC_SM_LINK_UP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_fabric_s*) ; 
 int /*<<< orphan*/  bfa_fcs_fabric_sm_uninit ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bfa_fcs_fabric_s *fabric,
			   enum bfa_fcs_fabric_event event)
{
	FUNC3(fabric->fcs, fabric->bport.port_cfg.pwwn);
	FUNC3(fabric->fcs, event);

	switch (event) {
	case BFA_FCS_FABRIC_SM_DELCOMP:
		FUNC2(fabric, bfa_fcs_fabric_sm_uninit);
		FUNC4(&fabric->fcs->wc);
		break;

	case BFA_FCS_FABRIC_SM_LINK_UP:
		break;

	case BFA_FCS_FABRIC_SM_LINK_DOWN:
		FUNC0(fabric);
		break;

	default:
		FUNC1(fabric->fcs, event);
	}
}