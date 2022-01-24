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

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ *,int (*) (struct device*,void*)) ; 
 int FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *not_used)
{
	int may_wakeup;

	may_wakeup = FUNC1(dev);
	if (may_wakeup)
		return may_wakeup;

	return FUNC0(dev, NULL,
			zynqmp_gpd_is_active_wakeup_path);
}