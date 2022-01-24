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
struct TYPE_2__ {int /*<<< orphan*/  lps; } ;
struct bfa_fcs_s {int /*<<< orphan*/  wc; TYPE_1__ fabric; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_FABRIC_SM_DELETE ; 
 int /*<<< orphan*/  bfa_fcs_exit_comp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_fcs_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_fcs_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct bfa_fcs_s *fcs)
{
	FUNC3(&fcs->wc, bfa_fcs_exit_comp, fcs);
	FUNC4(&fcs->wc);
	FUNC2(fcs, 0);
	FUNC0(fcs->fabric.lps);
	FUNC1(&fcs->fabric, BFA_FCS_FABRIC_SM_DELETE);
	FUNC5(&fcs->wc);
}