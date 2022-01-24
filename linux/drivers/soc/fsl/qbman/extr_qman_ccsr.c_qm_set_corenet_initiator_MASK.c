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

/* Variables and functions */
 int QM_CI_SCHED_CFG_BMAN_W ; 
 int QM_CI_SCHED_CFG_RW_W ; 
 int QM_CI_SCHED_CFG_SRCCIV ; 
 int QM_CI_SCHED_CFG_SRCCIV_EN ; 
 int QM_CI_SCHED_CFG_SRQ_W ; 
 int /*<<< orphan*/  REG_CI_SCHED_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(REG_CI_SCHED_CFG, QM_CI_SCHED_CFG_SRCCIV_EN |
		    (QM_CI_SCHED_CFG_SRCCIV << 24) |
		    (QM_CI_SCHED_CFG_SRQ_W << 8) |
		    (QM_CI_SCHED_CFG_RW_W << 4) |
		    QM_CI_SCHED_CFG_BMAN_W);
}