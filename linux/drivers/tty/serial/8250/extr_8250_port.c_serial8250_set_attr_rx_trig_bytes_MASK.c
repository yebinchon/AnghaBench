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
struct tty_port {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct tty_port* FUNC0 (struct device*) ; 
 int FUNC1 (struct tty_port*,unsigned char) ; 
 int FUNC2 (char const*,int,unsigned char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct tty_port *port = FUNC0(dev);
	unsigned char bytes;
	int ret;

	if (!count)
		return -EINVAL;

	ret = FUNC2(buf, 10, &bytes);
	if (ret < 0)
		return ret;

	ret = FUNC1(port, bytes);
	if (ret < 0)
		return ret;

	return count;
}