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
typedef  int /*<<< orphan*/  u8 ;
struct nd_region {int dummy; } ;
struct nd_namespace_pmem {int /*<<< orphan*/ * uuid; } ;
struct nd_namespace_blk {int /*<<< orphan*/ * uuid; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {scalar_t__ claim; } ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,size_t,char const*,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (struct nd_region*,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 size_t FUNC7 (struct nd_region*,struct device*) ; 
 size_t FUNC8 (struct device*,int /*<<< orphan*/ **,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 struct nd_namespace_blk* FUNC11 (struct device*) ; 
 struct nd_namespace_pmem* FUNC12 (struct device*) ; 
 struct nd_region* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC16(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct nd_region *nd_region = FUNC13(dev->parent);
	u8 *uuid = NULL;
	ssize_t rc = 0;
	u8 **ns_uuid;

	if (FUNC2(dev)) {
		struct nd_namespace_pmem *nspm = FUNC12(dev);

		ns_uuid = &nspm->uuid;
	} else if (FUNC1(dev)) {
		struct nd_namespace_blk *nsblk = FUNC11(dev);

		ns_uuid = &nsblk->uuid;
	} else
		return -ENXIO;

	FUNC5(dev);
	FUNC9(dev);
	FUNC15(dev);
	if (FUNC14(dev)->claim)
		rc = -EBUSY;
	if (rc >= 0)
		rc = FUNC8(dev, &uuid, buf, len);
	if (rc >= 0)
		rc = FUNC4(nd_region, dev, uuid, ns_uuid);
	if (rc >= 0)
		rc = FUNC7(nd_region, dev);
	else
		FUNC3(uuid);
	FUNC0(dev, "result: %zd wrote: %s%s", rc, buf,
			buf[len - 1] == '\n' ? "" : "\n");
	FUNC10(dev);
	FUNC6(dev);

	return rc < 0 ? rc : len;
}