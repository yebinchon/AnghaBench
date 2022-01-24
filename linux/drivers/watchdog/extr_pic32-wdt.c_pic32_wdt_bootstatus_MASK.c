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
struct pic32_wdt {int /*<<< orphan*/  rst_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RESETCON_WDT_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pic32_wdt *wdt)
{
	u32 v = FUNC1(wdt->rst_base);

	FUNC2(RESETCON_WDT_TIMEOUT, FUNC0(wdt->rst_base));

	return v & RESETCON_WDT_TIMEOUT;
}