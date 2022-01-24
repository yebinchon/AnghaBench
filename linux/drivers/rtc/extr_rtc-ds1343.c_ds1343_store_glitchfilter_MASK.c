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
struct ds1343_priv {int /*<<< orphan*/  map; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS1343_CONTROL_REG ; 
 int DS1343_EGFIL ; 
 size_t EINVAL ; 
 struct ds1343_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct ds1343_priv *priv = FUNC0(dev);
	int data;

	FUNC1(priv->map, DS1343_CONTROL_REG, &data);

	if (FUNC3(buf, "enabled", 7) == 0)
		data |= DS1343_EGFIL;

	else if (FUNC3(buf, "disabled", 8) == 0)
		data &= ~(DS1343_EGFIL);

	else
		return -EINVAL;

	FUNC2(priv->map, DS1343_CONTROL_REG, data);

	return count;
}