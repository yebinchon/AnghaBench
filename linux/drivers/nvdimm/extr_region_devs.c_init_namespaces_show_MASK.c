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
struct nd_region_data {int ns_active; int ns_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 struct nd_region_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nd_region_data *ndrd = FUNC0(dev);
	ssize_t rc;

	FUNC1(dev);
	if (ndrd)
		rc = FUNC3(buf, "%d/%d\n", ndrd->ns_active, ndrd->ns_count);
	else
		rc = -ENXIO;
	FUNC2(dev);

	return rc;
}