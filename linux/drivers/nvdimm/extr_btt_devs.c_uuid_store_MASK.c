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
struct nd_btt {int /*<<< orphan*/  uuid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,size_t,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 size_t FUNC3 (struct device*,int /*<<< orphan*/ *,char const*,size_t) ; 
 struct nd_btt* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct nd_btt *nd_btt = FUNC4(dev);
	ssize_t rc;

	FUNC1(dev);
	rc = FUNC3(dev, &nd_btt->uuid, buf, len);
	FUNC0(dev, "result: %zd wrote: %s%s", rc, buf,
			buf[len - 1] == '\n' ? "" : "\n");
	FUNC2(dev);

	return rc ? rc : len;
}