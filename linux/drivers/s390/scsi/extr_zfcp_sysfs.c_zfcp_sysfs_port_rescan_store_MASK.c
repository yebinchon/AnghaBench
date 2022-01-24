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
struct zfcp_adapter {int /*<<< orphan*/  scan_work; int /*<<< orphan*/  work_queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccw_device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ccw_device* FUNC2 (struct device*) ; 
 struct zfcp_adapter* FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					    struct device_attribute *attr,
					    const char *buf, size_t count)
{
	struct ccw_device *cdev = FUNC2(dev);
	struct zfcp_adapter *adapter = FUNC3(cdev);

	if (!adapter)
		return -ENODEV;

	/*
	 * Users wish is our command: immediately schedule and flush a
	 * worker to conduct a synchronous port scan, that is, neither
	 * a random delay nor a rate limit is applied here.
	 */
	FUNC1(adapter->work_queue, &adapter->scan_work, 0);
	FUNC0(&adapter->scan_work);
	FUNC4(adapter);

	return (ssize_t) count;
}