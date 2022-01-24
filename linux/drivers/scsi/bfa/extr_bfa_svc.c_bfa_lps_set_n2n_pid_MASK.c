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
typedef  int /*<<< orphan*/  uint32_t ;
struct bfa_lps_s {int /*<<< orphan*/  lp_pid; int /*<<< orphan*/  bfa; int /*<<< orphan*/  bfa_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_LPS_SM_SET_N2N_PID ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_lps_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct bfa_lps_s *lps, uint32_t n2n_pid)
{
	FUNC1(lps->bfa, lps->bfa_tag);
	FUNC1(lps->bfa, n2n_pid);

	lps->lp_pid = n2n_pid;
	FUNC0(lps, BFA_LPS_SM_SET_N2N_PID);
}