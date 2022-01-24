#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct typec_port {TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int* accessory; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (char*,char*,...) ; 
 struct typec_port* FUNC2 (struct device*) ; 
 char** typec_accessory_modes ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					      struct device_attribute *attr,
					      char *buf)
{
	struct typec_port *port = FUNC2(dev);
	ssize_t ret = 0;
	int i;

	for (i = 0; i < FUNC0(port->cap->accessory); i++) {
		if (port->cap->accessory[i])
			ret += FUNC1(buf + ret, "%s ",
			       typec_accessory_modes[port->cap->accessory[i]]);
	}

	if (!ret)
		return FUNC1(buf, "none\n");

	buf[ret - 1] = '\n';

	return ret;
}