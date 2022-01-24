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
struct watchdog_device {unsigned int timeout; } ;
struct uniphier_wdt_dev {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct watchdog_device*) ; 
 struct uniphier_wdt_dev* FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *w,
					 unsigned int t)
{
	struct uniphier_wdt_dev *wdev = FUNC3(w);
	unsigned int tmp_timeout;
	int ret;

	tmp_timeout = FUNC1(t);
	if (tmp_timeout == w->timeout)
		return 0;

	if (FUNC2(w)) {
		ret = FUNC0(wdev->regmap, tmp_timeout);
		if (ret)
			return ret;
	}

	w->timeout = tmp_timeout;

	return 0;
}