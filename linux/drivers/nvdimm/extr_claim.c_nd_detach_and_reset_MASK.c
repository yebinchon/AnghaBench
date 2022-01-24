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
struct nd_pfn {int /*<<< orphan*/  mode; int /*<<< orphan*/ * uuid; } ;
struct nd_namespace_common {int dummy; } ;
struct nd_btt {int /*<<< orphan*/ * uuid; scalar_t__ lbasize; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ND_ASYNC ; 
 int /*<<< orphan*/  PFN_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct nd_namespace_common**) ; 
 scalar_t__ FUNC1 (struct device*,struct nd_namespace_common*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 struct nd_btt* FUNC7 (struct device*) ; 
 struct nd_pfn* FUNC8 (struct device*) ; 

__attribute__((used)) static void FUNC9(struct device *dev,
		struct nd_namespace_common **_ndns)
{
	/* detach the namespace and destroy / reset the device */
	FUNC0(dev, _ndns);
	if (FUNC1(dev, *_ndns)) {
		FUNC6(dev, ND_ASYNC);
	} else if (FUNC2(dev)) {
		struct nd_btt *nd_btt = FUNC7(dev);

		nd_btt->lbasize = 0;
		FUNC5(nd_btt->uuid);
		nd_btt->uuid = NULL;
	} else if (FUNC4(dev) || FUNC3(dev)) {
		struct nd_pfn *nd_pfn = FUNC8(dev);

		FUNC5(nd_pfn->uuid);
		nd_pfn->uuid = NULL;
		nd_pfn->mode = PFN_MODE_NONE;
	}
}