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
struct s3c2410_wdt {int /*<<< orphan*/  clock; int /*<<< orphan*/  wdt_device; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct s3c2410_wdt* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct s3c2410_wdt*) ; 
 int FUNC3 (struct s3c2410_wdt*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	int ret;
	struct s3c2410_wdt *wdt = FUNC1(dev);

	ret = FUNC3(wdt, true);
	if (ret < 0)
		return ret;

	FUNC4(&wdt->wdt_device);

	FUNC2(wdt);

	FUNC0(wdt->clock);

	return 0;
}