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
struct zfcp_adapter {int /*<<< orphan*/  status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,char*) ; 
 struct ccw_device* FUNC2 (struct device*) ; 
 struct zfcp_adapter* FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					      struct device_attribute *attr,
					      char *buf)
{
	struct ccw_device *cdev = FUNC2(dev);
	struct zfcp_adapter *adapter = FUNC3(cdev);
	int i;

	if (!adapter)
		return -ENODEV;

	if (FUNC0(&adapter->status) & ZFCP_STATUS_COMMON_ERP_FAILED)
		i = FUNC1(buf, "1\n");
	else
		i = FUNC1(buf, "0\n");

	FUNC4(adapter);
	return i;
}