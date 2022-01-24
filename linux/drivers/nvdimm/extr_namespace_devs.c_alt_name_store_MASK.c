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
struct nd_region {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct nd_region*,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct nd_region* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct nd_region *nd_region = FUNC7(dev->parent);
	ssize_t rc;

	FUNC2(dev);
	FUNC5(dev);
	FUNC8(dev);
	rc = FUNC0(dev, buf, len);
	if (rc >= 0)
		rc = FUNC4(nd_region, dev);
	FUNC1(dev, "%s(%zd)\n", rc < 0 ? "fail " : "", rc);
	FUNC6(dev);
	FUNC3(dev);

	return rc < 0 ? rc : len;
}