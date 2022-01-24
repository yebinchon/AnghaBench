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
struct gadc_thermal_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct gadc_thermal_info*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(void *data, int *temp)
{
	struct gadc_thermal_info *gti = data;
	int val;
	int ret;

	ret = FUNC2(gti->channel, &val);
	if (ret < 0) {
		FUNC0(gti->dev, "IIO channel read failed %d\n", ret);
		return ret;
	}
	*temp = FUNC1(gti, val);

	return 0;
}