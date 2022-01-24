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
struct platform_device {int dummy; } ;
struct max63xx_wdt {int /*<<< orphan*/  set; int /*<<< orphan*/  ping; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max63xx_mmap_ping ; 
 int /*<<< orphan*/  max63xx_mmap_set ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *p, struct max63xx_wdt *wdt)
{
	wdt->base = FUNC2(p, 0);
	if (FUNC0(wdt->base))
		return FUNC1(wdt->base);

	FUNC3(&wdt->lock);

	wdt->ping = max63xx_mmap_ping;
	wdt->set = max63xx_mmap_set;
	return 0;
}