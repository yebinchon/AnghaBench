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
struct s3c2410_wdt {int /*<<< orphan*/  lock; scalar_t__ reg_base; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ S3C2410_WTCNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s3c2410_wdt* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct s3c2410_wdt *wdt = FUNC2(wdd);

	FUNC0(&wdt->lock);
	FUNC3(wdt->count, wdt->reg_base + S3C2410_WTCNT);
	FUNC1(&wdt->lock);

	return 0;
}