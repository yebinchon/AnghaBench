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
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  RV3028_TS_COUNT ; 
 struct rv3028_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct rv3028_data *rv3028 = FUNC0(dev->parent);
	int ret, count;

	ret = FUNC1(rv3028->regmap, RV3028_TS_COUNT, &count);
	if (ret)
		return ret;

	return FUNC2(buf, "%u\n", count);
}