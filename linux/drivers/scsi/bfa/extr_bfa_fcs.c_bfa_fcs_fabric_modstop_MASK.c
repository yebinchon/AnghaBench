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
struct bfa_fcs_fabric_s {int dummy; } ;
struct bfa_fcs_s {struct bfa_fcs_fabric_s fabric; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FCS_FABRIC_SM_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcs_fabric_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_s*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct bfa_fcs_s *fcs)
{
	struct bfa_fcs_fabric_s *fabric;

	FUNC1(fcs, 0);
	fabric = &fcs->fabric;
	FUNC0(fabric, BFA_FCS_FABRIC_SM_STOP);
}