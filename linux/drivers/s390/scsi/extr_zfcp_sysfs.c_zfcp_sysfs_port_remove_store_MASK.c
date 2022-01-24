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
typedef  int /*<<< orphan*/  u64 ;
struct zfcp_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  list; } ;
struct zfcp_adapter {int /*<<< orphan*/  port_list_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ccw_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct zfcp_adapter* FUNC7 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_port*,int /*<<< orphan*/ ,char*) ; 
 struct zfcp_port* FUNC10 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct zfcp_port*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev,
					    struct device_attribute *attr,
					    const char *buf, size_t count)
{
	struct ccw_device *cdev = FUNC4(dev);
	struct zfcp_adapter *adapter = FUNC7(cdev);
	struct zfcp_port *port;
	u64 wwpn;
	int retval = -EINVAL;

	if (!adapter)
		return -ENODEV;

	if (FUNC1(buf, 0, (unsigned long long *) &wwpn))
		goto out;

	port = FUNC10(adapter, wwpn);
	if (!port)
		goto out;
	else
		retval = 0;

	if (FUNC11(port)) {
		retval = -EBUSY;
		FUNC3(&port->dev); /* undo zfcp_get_port_by_wwpn() */
		goto out;
	}

	FUNC5(&adapter->port_list_lock);
	FUNC2(&port->list);
	FUNC6(&adapter->port_list_lock);

	FUNC3(&port->dev);

	FUNC9(port, 0, "syprs_1");
	FUNC0(&port->dev);
 out:
	FUNC8(adapter);
	return retval ? retval : (ssize_t) count;
}