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
struct device {int dummy; } ;
struct nd_pfn {int /*<<< orphan*/  ndns; struct device dev; int /*<<< orphan*/  align; int /*<<< orphan*/  mode; } ;
struct nd_namespace_common {int /*<<< orphan*/  claim; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFN_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct nd_namespace_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

struct device *FUNC6(struct nd_pfn *nd_pfn,
		struct nd_namespace_common *ndns)
{
	struct device *dev;

	if (!nd_pfn)
		return NULL;

	nd_pfn->mode = PFN_MODE_NONE;
	nd_pfn->align = FUNC4();
	dev = &nd_pfn->dev;
	FUNC3(&nd_pfn->dev);
	if (ndns && !FUNC0(&nd_pfn->dev, ndns, &nd_pfn->ndns)) {
		FUNC1(&ndns->dev, "failed, already claimed by %s\n",
				FUNC2(ndns->claim));
		FUNC5(dev);
		return NULL;
	}
	return dev;
}