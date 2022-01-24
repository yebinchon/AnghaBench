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
typedef  int /*<<< orphan*/  u64 ;
struct siox_master {int /*<<< orphan*/  poll_interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct siox_master*) ; 
 int /*<<< orphan*/  FUNC3 (struct siox_master*) ; 
 struct siox_master* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct siox_master *smaster = FUNC4(dev);
	int ret;
	u64 val;

	ret = FUNC0(buf, 0, &val);
	if (ret < 0)
		return ret;

	FUNC2(smaster);

	smaster->poll_interval = FUNC1(val);

	FUNC3(smaster);

	return count;
}