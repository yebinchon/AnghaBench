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
typedef  int /*<<< orphan*/  u32 ;
struct led_classdev {int dummy; } ;
struct gb_channel {int /*<<< orphan*/  color; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct led_classdev* FUNC1 (struct device*) ; 
 int FUNC2 (struct gb_channel*,int /*<<< orphan*/ ) ; 
 struct gb_channel* FUNC3 (struct led_classdev*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct led_classdev*) ; 
 scalar_t__ FUNC6 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct led_classdev*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t size)
{
	struct led_classdev *cdev = FUNC1(dev);
	struct gb_channel *channel = FUNC3(cdev);
	u32 color;
	int ret;

	FUNC5(cdev);
	if (FUNC6(cdev)) {
		ret = -EBUSY;
		goto unlock;
	}
	ret = FUNC4(buf, 0, &color);
	if (ret < 0) {
		FUNC0(dev, "could not parse color value %d\n", ret);
		goto unlock;
	}

	ret = FUNC2(channel, color);
	if (ret < 0)
		goto unlock;

	channel->color = color;
	ret = size;
unlock:
	FUNC7(cdev);
	return ret;
}