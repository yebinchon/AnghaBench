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
struct pic32_dmt {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DMTCLR_REG ; 
 scalar_t__ DMTPRECLR_REG ; 
 scalar_t__ DMTSTAT_REG ; 
 int DMTSTAT_WINOPN ; 
 int DMT_STEP1_KEY ; 
 int DMT_STEP2_KEY ; 
 int FUNC0 (struct pic32_dmt*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static inline int FUNC3(struct pic32_dmt *dmt)
{
	u32 v;
	u32 timeout = 500;

	/* set pre-clear key */
	FUNC2(DMT_STEP1_KEY << 8, dmt->regs + DMTPRECLR_REG);

	/* wait for DMT window to open */
	while (--timeout) {
		v = FUNC1(dmt->regs + DMTSTAT_REG) & DMTSTAT_WINOPN;
		if (v == DMTSTAT_WINOPN)
			break;
	}

	/* apply key2 */
	FUNC2(DMT_STEP2_KEY, dmt->regs + DMTCLR_REG);

	/* check whether keys are latched correctly */
	return FUNC0(dmt);
}