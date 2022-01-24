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
 scalar_t__ SCx200_WDT_WDCNFG ; 
 scalar_t__ SCx200_WDT_WDSTS ; 
 int /*<<< orphan*/  SCx200_WDT_WDSTS_WDOVF ; 
 scalar_t__ SCx200_WDT_WDTO ; 
 int /*<<< orphan*/  W_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ scx200_cb_base ; 
 int /*<<< orphan*/  scx_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC2("disabling watchdog timer\n");

	FUNC3(&scx_lock);
	FUNC1(0, scx200_cb_base + SCx200_WDT_WDTO);
	FUNC0(SCx200_WDT_WDSTS_WDOVF, scx200_cb_base + SCx200_WDT_WDSTS);
	FUNC1(W_DISABLE, scx200_cb_base + SCx200_WDT_WDCNFG);
	FUNC4(&scx_lock);
}