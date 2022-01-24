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
struct watchdog_device {int /*<<< orphan*/  timeout; } ;
struct uniphier_wdt_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 struct uniphier_wdt_dev* FUNC2 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *w)
{
	struct uniphier_wdt_dev *wdev = FUNC2(w);
	unsigned int tmp_timeout;

	tmp_timeout = FUNC1(w->timeout);

	return FUNC0(wdev->regmap, tmp_timeout);
}