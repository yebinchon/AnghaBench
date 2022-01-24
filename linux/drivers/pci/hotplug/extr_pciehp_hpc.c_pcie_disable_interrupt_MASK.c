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
typedef  int u16 ;
struct controller {int dummy; } ;

/* Variables and functions */
 int PCI_EXP_SLTCTL_DLLSCE ; 
 int PCI_EXP_SLTCTL_HPIE ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct controller *ctrl)
{
	u16 mask;

	/*
	 * Mask hot-plug interrupt to prevent it triggering immediately
	 * when the link goes inactive (we still get PME when any of the
	 * enabled events is detected). Same goes with Link Layer State
	 * changed event which generates PME immediately when the link goes
	 * inactive so mask it as well.
	 */
	mask = PCI_EXP_SLTCTL_HPIE | PCI_EXP_SLTCTL_DLLSCE;
	FUNC0(ctrl, 0, mask);
}