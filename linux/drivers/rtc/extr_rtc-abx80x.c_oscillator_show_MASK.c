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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (char*,char*) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *attr, char *buf)
{
	int rc_mode = 0;
	struct i2c_client *client = FUNC3(dev->parent);

	rc_mode = FUNC0(client);

	if (rc_mode < 0) {
		FUNC1(dev, "Failed to read RTC oscillator selection\n");
		FUNC2(buf, "\n");
		return rc_mode;
	}

	if (rc_mode)
		return FUNC2(buf, "rc\n");
	else
		return FUNC2(buf, "xtal\n");
}