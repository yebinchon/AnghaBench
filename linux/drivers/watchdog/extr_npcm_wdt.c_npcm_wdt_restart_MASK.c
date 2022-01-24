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
 int NPCM_WTR ; 
 int NPCM_WTRE ; 
 struct npcm_wdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd,
			    unsigned long action, void *data)
{
	struct npcm_wdt *wdt = FUNC0(wdd);

	FUNC2(NPCM_WTR | NPCM_WTRE | NPCM_WTE, wdt->reg);
	FUNC1(1000);

	return 0;
}