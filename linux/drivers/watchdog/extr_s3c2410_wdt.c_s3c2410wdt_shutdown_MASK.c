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
struct s3c2410_wdt {int /*<<< orphan*/  wdt_device; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct s3c2410_wdt* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c2410_wdt*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct platform_device *dev)
{
	struct s3c2410_wdt *wdt = FUNC0(dev);

	FUNC1(wdt, true);

	FUNC2(&wdt->wdt_device);
}