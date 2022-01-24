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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adp8870_bl {int /*<<< orphan*/  cached_daylight_max; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADP8870_BLMX1 ; 
 int FUNC0 (struct device*,char const*,size_t,int /*<<< orphan*/ ) ; 
 struct adp8870_bl* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct adp8870_bl *data = FUNC1(dev);
	int ret = FUNC2(buf, 10, &data->cached_daylight_max);

	if (ret)
		return ret;

	return FUNC0(dev, buf, count, ADP8870_BLMX1);
}