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
struct sp805_wdt {int /*<<< orphan*/  wdd; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 struct sp805_wdt* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct amba_device *adev)
{
	struct sp805_wdt *wdt = FUNC0(adev);

	FUNC2(&wdt->wdd);
	FUNC1(&wdt->wdd, NULL);

	return 0;
}