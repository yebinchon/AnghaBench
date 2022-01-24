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
typedef  unsigned long long u64 ;
typedef  unsigned long long u32 ;
struct nd_pfn_sb {int /*<<< orphan*/  end_trunc; int /*<<< orphan*/  start_pad; int /*<<< orphan*/  dataoff; } ;
struct nd_pfn {struct nd_namespace_common* ndns; struct nd_pfn_sb* pfn_sb; } ;
struct nd_namespace_io {int /*<<< orphan*/  res; } ;
struct nd_namespace_common {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned long long) ; 
 struct nd_namespace_io* FUNC6 (int /*<<< orphan*/ *) ; 
 struct nd_pfn* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nd_pfn *nd_pfn = FUNC7(dev);
	ssize_t rc;

	FUNC2(dev);
	if (dev->driver) {
		struct nd_pfn_sb *pfn_sb = nd_pfn->pfn_sb;
		u64 offset = FUNC1(pfn_sb->dataoff);
		struct nd_namespace_common *ndns = nd_pfn->ndns;
		u32 start_pad = FUNC0(pfn_sb->start_pad);
		u32 end_trunc = FUNC0(pfn_sb->end_trunc);
		struct nd_namespace_io *nsio = FUNC6(&ndns->dev);

		rc = FUNC5(buf, "%llu\n", (unsigned long long)
				FUNC4(&nsio->res) - start_pad
				- end_trunc - offset);
	} else {
		/* no size to convey if the pfn instance is disabled */
		rc = -ENXIO;
	}
	FUNC3(dev);

	return rc;
}