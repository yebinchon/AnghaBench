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
struct typec_port {int prefer_role; TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ type; int (* try_role ) (TYPE_1__*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int TYPEC_NO_PREFERRED_ROLE ; 
 scalar_t__ TYPEC_PORT_DRP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 struct typec_port* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  typec_roles ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
		     const char *buf, size_t size)
{
	struct typec_port *port = FUNC4(dev);
	int role;
	int ret;

	if (port->cap->type != TYPEC_PORT_DRP) {
		FUNC0(dev, "Preferred role only supported with DRP ports\n");
		return -EOPNOTSUPP;
	}

	if (!port->cap->try_role) {
		FUNC0(dev, "Setting preferred role not supported\n");
		return -EOPNOTSUPP;
	}

	role = FUNC2(typec_roles, buf);
	if (role < 0) {
		if (FUNC3(buf, "none"))
			role = TYPEC_NO_PREFERRED_ROLE;
		else
			return -EINVAL;
	}

	ret = port->cap->try_role(port->cap, role);
	if (ret)
		return ret;

	port->prefer_role = role;
	return size;
}