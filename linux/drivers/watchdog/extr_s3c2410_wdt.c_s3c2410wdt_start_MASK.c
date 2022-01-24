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
struct s3c2410_wdt {unsigned long count; int /*<<< orphan*/  lock; scalar_t__ reg_base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ S3C2410_WTCNT ; 
 scalar_t__ S3C2410_WTCON ; 
 unsigned long S3C2410_WTCON_DIV128 ; 
 unsigned long S3C2410_WTCON_ENABLE ; 
 unsigned long S3C2410_WTCON_INTEN ; 
 unsigned long S3C2410_WTCON_RSTEN ; 
 scalar_t__ S3C2410_WTDAT ; 
 int /*<<< orphan*/  FUNC0 (struct s3c2410_wdt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 scalar_t__ soft_noboot ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct s3c2410_wdt* FUNC5 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdd)
{
	unsigned long wtcon;
	struct s3c2410_wdt *wdt = FUNC5(wdd);

	FUNC3(&wdt->lock);

	FUNC0(wdt);

	wtcon = FUNC2(wdt->reg_base + S3C2410_WTCON);
	wtcon |= S3C2410_WTCON_ENABLE | S3C2410_WTCON_DIV128;

	if (soft_noboot) {
		wtcon |= S3C2410_WTCON_INTEN;
		wtcon &= ~S3C2410_WTCON_RSTEN;
	} else {
		wtcon &= ~S3C2410_WTCON_INTEN;
		wtcon |= S3C2410_WTCON_RSTEN;
	}

	FUNC1(wdt->dev, "Starting watchdog: count=0x%08x, wtcon=%08lx\n",
		wdt->count, wtcon);

	FUNC6(wdt->count, wdt->reg_base + S3C2410_WTDAT);
	FUNC6(wdt->count, wdt->reg_base + S3C2410_WTCNT);
	FUNC6(wtcon, wdt->reg_base + S3C2410_WTCON);
	FUNC4(&wdt->lock);

	return 0;
}