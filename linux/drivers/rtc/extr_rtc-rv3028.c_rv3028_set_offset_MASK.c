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
struct rv3028_data {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OFFSET_STEP_PPT ; 
 int /*<<< orphan*/  RV3028_BACKUP ; 
 int /*<<< orphan*/  RV3028_OFFSET ; 
 int FUNC2 (long,long,long) ; 
 struct rv3028_data* FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, long offset)
{
	struct rv3028_data *rv3028 = FUNC3(dev);
	int ret;

	offset = FUNC2(offset, -244141L, 243187L) * 1000;
	offset = FUNC1(offset, OFFSET_STEP_PPT);

	ret = FUNC5(rv3028->regmap, RV3028_OFFSET, offset >> 1);
	if (ret < 0)
		return ret;

	return FUNC4(rv3028->regmap, RV3028_BACKUP, FUNC0(7),
				  offset << 7);
}