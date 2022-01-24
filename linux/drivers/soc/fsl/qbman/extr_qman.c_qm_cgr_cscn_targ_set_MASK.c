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
typedef  int u32 ;
struct __qm_mc_cgr {int /*<<< orphan*/  cscn_targ; int /*<<< orphan*/  cscn_targ_upd_ctrl; } ;

/* Variables and functions */
 scalar_t__ QMAN_REV30 ; 
 int FUNC0 (int) ; 
 int QM_CGR_TARG_UDP_CTRL_WRITE_BIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ qman_ip_rev ; 

__attribute__((used)) static void FUNC3(struct __qm_mc_cgr *cgr, int pi, u32 val)
{
	if (qman_ip_rev >= QMAN_REV30)
		cgr->cscn_targ_upd_ctrl = FUNC1(pi |
					QM_CGR_TARG_UDP_CTRL_WRITE_BIT);
	else
		cgr->cscn_targ = FUNC2(val | FUNC0(pi));
}