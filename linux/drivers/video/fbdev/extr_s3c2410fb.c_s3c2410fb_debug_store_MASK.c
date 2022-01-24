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

/* Variables and functions */
 int EINVAL ; 
 int debug ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t len)
{
	if (len < 1)
		return -EINVAL;

	if (FUNC1(buf, "on", 2) == 0 ||
	    FUNC1(buf, "1", 1) == 0) {
		debug = 1;
		FUNC0(dev, "s3c2410fb: Debug On");
	} else if (FUNC1(buf, "off", 3) == 0 ||
		   FUNC1(buf, "0", 1) == 0) {
		debug = 0;
		FUNC0(dev, "s3c2410fb: Debug Off");
	} else {
		return -EINVAL;
	}

	return len;
}