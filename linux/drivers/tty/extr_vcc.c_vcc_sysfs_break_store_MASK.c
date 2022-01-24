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
struct vcc_port {int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  VCC_CTL_BREAK ; 
 struct vcc_port* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct vcc_port*) ; 
 scalar_t__ FUNC5 (struct vcc_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct vcc_port *port;
	unsigned long flags;
	int rv = count;
	int brk;

	port = FUNC0(dev);
	if (!port)
		return -ENODEV;

	FUNC1(&port->lock, flags);

	if (FUNC3(buf, "%ud", &brk) != 1 || brk != 1)
		rv = -EINVAL;
	else if (FUNC5(port, VCC_CTL_BREAK) < 0)
		FUNC4(port);

	FUNC2(&port->lock, flags);

	return rv;
}