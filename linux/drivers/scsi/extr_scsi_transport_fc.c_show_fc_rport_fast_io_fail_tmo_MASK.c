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
struct fc_rport {int fast_io_fail_tmo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 struct fc_rport* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2 (struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct fc_rport *rport = FUNC1(dev);

	if (rport->fast_io_fail_tmo == -1)
		return FUNC0(buf, 5, "off\n");
	return FUNC0(buf, 20, "%d\n", rport->fast_io_fail_tmo);
}