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
struct dw_wdt {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ WDOG_TIMEOUT_RANGE_REG_OFFSET ; 
 int FUNC0 (struct dw_wdt*,int) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct dw_wdt *dw_wdt)
{
	int top = FUNC1(dw_wdt->regs + WDOG_TIMEOUT_RANGE_REG_OFFSET) & 0xF;

	return FUNC0(dw_wdt, top);
}