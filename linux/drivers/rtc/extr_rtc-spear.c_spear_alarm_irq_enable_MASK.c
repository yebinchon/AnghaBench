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
struct spear_rtc_config {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct spear_rtc_config* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct spear_rtc_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct spear_rtc_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct spear_rtc_config*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int enabled)
{
	struct spear_rtc_config *config = FUNC0(dev);
	int ret = 0;

	FUNC1(config);

	switch (enabled) {
	case 0:
		/* alarm off */
		FUNC2(config);
		break;
	case 1:
		/* alarm on */
		FUNC3(config);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}