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
struct typec_port {int /*<<< orphan*/  port_type_lock; TYPE_1__* cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* dr_set ) (TYPE_1__*,int) ;scalar_t__ data; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ TYPEC_PORT_DRD ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 struct typec_port* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  typec_data_roles ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf, size_t size)
{
	struct typec_port *port = FUNC5(dev);
	int ret;

	if (!port->cap->dr_set) {
		FUNC0(dev, "data role swapping not supported\n");
		return -EOPNOTSUPP;
	}

	ret = FUNC4(typec_data_roles, buf);
	if (ret < 0)
		return ret;

	FUNC1(&port->port_type_lock);
	if (port->cap->data != TYPEC_PORT_DRD) {
		ret = -EOPNOTSUPP;
		goto unlock_and_ret;
	}

	ret = port->cap->dr_set(port->cap, ret);
	if (ret)
		goto unlock_and_ret;

	ret = size;
unlock_and_ret:
	FUNC2(&port->port_type_lock);
	return ret;
}