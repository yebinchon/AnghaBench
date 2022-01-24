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
typedef  int /*<<< orphan*/  u8 ;
struct nd_region {int dummy; } ;
struct nd_namespace_pmem {int /*<<< orphan*/ * uuid; } ;
struct nd_namespace_blk {int /*<<< orphan*/ * uuid; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct device*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long long,char*,int) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int FUNC8 (struct nd_region*,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 struct nd_namespace_blk* FUNC11 (struct device*) ; 
 struct nd_namespace_pmem* FUNC12 (struct device*) ; 
 struct nd_region* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC15(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct nd_region *nd_region = FUNC13(dev->parent);
	unsigned long long val;
	u8 **uuid = NULL;
	int rc;

	rc = FUNC5(buf, 0, &val);
	if (rc)
		return rc;

	FUNC6(dev);
	FUNC9(dev);
	FUNC14(dev);
	rc = FUNC0(dev, val);
	if (rc >= 0)
		rc = FUNC8(nd_region, dev);

	if (FUNC3(dev)) {
		struct nd_namespace_pmem *nspm = FUNC12(dev);

		uuid = &nspm->uuid;
	} else if (FUNC2(dev)) {
		struct nd_namespace_blk *nsblk = FUNC11(dev);

		uuid = &nsblk->uuid;
	}

	if (rc == 0 && val == 0 && uuid) {
		/* setting size zero == 'delete namespace' */
		FUNC4(*uuid);
		*uuid = NULL;
	}

	FUNC1(dev, "%llx %s (%d)\n", val, rc < 0 ? "fail" : "success", rc);

	FUNC10(dev);
	FUNC7(dev);

	return rc < 0 ? rc : len;
}