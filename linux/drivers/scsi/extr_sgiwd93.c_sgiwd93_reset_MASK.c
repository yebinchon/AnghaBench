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
struct hpc3_scsiregs {scalar_t__ ctrl; } ;

/* Variables and functions */
 scalar_t__ HPC3_SCTRL_CRESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(unsigned long base)
{
	struct hpc3_scsiregs *hregs = (struct hpc3_scsiregs *) base;

	hregs->ctrl = HPC3_SCTRL_CRESET;
	FUNC0(50);
	hregs->ctrl = 0;
}