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
struct device {int dummy; } ;
struct brcmstb_waketmr {int /*<<< orphan*/  irq; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct brcmstb_waketmr *timer)
{
	struct device *dev = timer->dev;
	int ret = 0;

	if (FUNC1(dev)) {
		ret = FUNC2(timer->irq);
		if (ret) {
			FUNC0(dev, "failed to enable wake-up interrupt\n");
			return ret;
		}
	}

	return ret;
}