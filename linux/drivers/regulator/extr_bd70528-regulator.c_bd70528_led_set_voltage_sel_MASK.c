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
struct regulator_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
				       unsigned int sel)
{
	int ret;

	ret = FUNC1(rdev);
	if (ret < 0)
		return ret;

	if (ret == 0)
		return FUNC2(rdev, sel);

	FUNC0(&rdev->dev,
		"LED voltage change not allowed when led is enabled\n");

	return -EBUSY;
}