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
 unsigned int SKY81452_OCP ; 
 unsigned int SKY81452_OTMP ; 
 int /*<<< orphan*/  SKY81452_REG4 ; 
 struct regmap* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct regmap *regmap = FUNC0(FUNC4(dev));
	unsigned int value = 0;
	int ret;

	ret = FUNC1(regmap, SKY81452_REG4, &value);
	if (ret < 0)
		return ret;

	*buf = 0;

	if (value & SKY81452_OCP)
		FUNC2(buf, "over-current ");

	if (value & SKY81452_OTMP)
		FUNC2(buf, "over-temperature");

	FUNC2(buf, "\n");
	return FUNC3(buf);
}