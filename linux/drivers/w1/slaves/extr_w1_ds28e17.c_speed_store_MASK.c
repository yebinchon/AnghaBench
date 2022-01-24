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
struct w1_slave {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct w1_slave* FUNC0 (struct device*) ; 
 int FUNC1 (struct w1_slave*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct w1_slave *sl = FUNC0(dev);
	int error;

	/* Valid values are: "100", "400", "900" */
	if (count < 3 || count > 4 || !buf)
		return -EINVAL;
	if (count == 4 && buf[3] != '\n')
		return -EINVAL;
	if (buf[1] != '0' || buf[2] != '0')
		return -EINVAL;

	/* Set speed on slave. */
	switch (buf[0]) {
	case '1':
		error = FUNC1(sl, 0);
		break;
	case '4':
		error = FUNC1(sl, 1);
		break;
	case '9':
		error = FUNC1(sl, 2);
		break;
	default:
		return -EINVAL;
	}

	if (error < 0)
		return error;

	/* Return bytes written. */
	return count;
}