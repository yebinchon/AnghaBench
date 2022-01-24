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
struct uwb_rc {int dummy; } ;
struct uwb_dev {struct uwb_rc* rc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,char*,int*) ; 
 struct uwb_dev* FUNC1 (struct device*) ; 
 int FUNC2 (struct uwb_rc*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				   struct device_attribute *attr,
				   const char *buf, size_t size)
{
	struct uwb_dev *uwb_dev = FUNC1(dev);
	struct uwb_rc *rc = uwb_dev->rc;
	int channel;
	ssize_t result = -EINVAL;

	result = FUNC0(buf, "%d", &channel);
	if (result >= 1)
		result = FUNC2(rc, channel);

	return result < 0 ? result : size;
}