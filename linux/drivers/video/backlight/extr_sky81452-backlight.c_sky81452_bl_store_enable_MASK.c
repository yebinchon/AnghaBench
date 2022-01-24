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
struct regmap {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKY81452_EN ; 
 int /*<<< orphan*/  SKY81452_REG1 ; 
 struct regmap* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct regmap *regmap = FUNC1(FUNC4(dev));
	unsigned long value;
	int ret;

	ret = FUNC2(buf, 16, &value);
	if (ret < 0)
		return ret;

	ret = FUNC3(regmap, SKY81452_REG1, SKY81452_EN,
					value << FUNC0(SKY81452_EN));
	if (ret < 0)
		return ret;

	return count;
}