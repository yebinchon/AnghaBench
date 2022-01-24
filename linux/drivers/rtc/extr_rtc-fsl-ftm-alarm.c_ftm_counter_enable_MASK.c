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
struct ftm_rtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTM_SC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTM_SC_CLKS_FIXED_FREQ ; 
 int FTM_SC_CLK_MASK ; 
 int FTM_SC_PS_MASK ; 
 int FUNC1 (struct ftm_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ftm_rtc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct ftm_rtc *rtc)
{
	u32 val;

	/* select and enable counter clock source */
	val = FUNC1(rtc, FTM_SC);
	val &= ~(FTM_SC_PS_MASK | FTM_SC_CLK_MASK);
	val |= (FTM_SC_PS_MASK | FUNC0(FTM_SC_CLKS_FIXED_FREQ));
	FUNC2(rtc, FTM_SC, val);
}