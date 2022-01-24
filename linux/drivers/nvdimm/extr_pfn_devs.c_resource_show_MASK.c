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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct nd_pfn_sb {int /*<<< orphan*/  start_pad; int /*<<< orphan*/  dataoff; } ;
struct nd_pfn {struct nd_namespace_common* ndns; struct nd_pfn_sb* pfn_sb; } ;
struct TYPE_2__ {scalar_t__ start; } ;
struct nd_namespace_io {TYPE_1__ res; } ;
struct nd_namespace_common {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 
 struct nd_namespace_io* FUNC5 (int /*<<< orphan*/ *) ; 
 struct nd_pfn* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nd_pfn *nd_pfn = FUNC6(dev);
	ssize_t rc;

	FUNC2(dev);
	if (dev->driver) {
		struct nd_pfn_sb *pfn_sb = nd_pfn->pfn_sb;
		u64 offset = FUNC1(pfn_sb->dataoff);
		struct nd_namespace_common *ndns = nd_pfn->ndns;
		u32 start_pad = FUNC0(pfn_sb->start_pad);
		struct nd_namespace_io *nsio = FUNC5(&ndns->dev);

		rc = FUNC4(buf, "%#llx\n", (unsigned long long) nsio->res.start
				+ start_pad + offset);
	} else {
		/* no address to convey if the pfn instance is disabled */
		rc = -ENXIO;
	}
	FUNC3(dev);

	return rc;
}