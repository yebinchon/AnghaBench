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
struct watchdog_device {int dummy; } ;
struct npcm_wdt {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int NPCM_WTE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct npcm_wdt* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static bool FUNC2(struct watchdog_device *wdd)
{
	struct npcm_wdt *wdt = FUNC1(wdd);

	return FUNC0(wdt->reg) & NPCM_WTE;
}