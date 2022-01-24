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
struct regulator_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regulator_dev*) ; 
 struct regulator_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct regulator_dev *rdev = FUNC1(dev);
	ssize_t ret;

	FUNC2(rdev);
	ret = FUNC3(buf, FUNC0(rdev));
	FUNC4(rdev);

	return ret;
}