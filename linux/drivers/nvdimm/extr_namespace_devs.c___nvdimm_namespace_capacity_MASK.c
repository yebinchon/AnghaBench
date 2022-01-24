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
struct TYPE_2__ {int /*<<< orphan*/  res; } ;
struct nd_namespace_pmem {TYPE_1__ nsio; } ;
struct nd_namespace_io {int /*<<< orphan*/  res; } ;
struct device {int dummy; } ;
struct nd_namespace_common {struct device dev; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 struct nd_namespace_io* FUNC7 (struct device*) ; 
 struct nd_namespace_pmem* FUNC8 (struct device*) ; 

resource_size_t FUNC9(struct nd_namespace_common *ndns)
{
	struct device *dev = &ndns->dev;

	if (FUNC3(dev)) {
		struct nd_namespace_pmem *nspm = FUNC8(dev);

		return FUNC5(&nspm->nsio.res);
	} else if (FUNC1(dev)) {
		return FUNC4(FUNC6(dev));
	} else if (FUNC2(dev)) {
		struct nd_namespace_io *nsio = FUNC7(dev);

		return FUNC5(&nsio->res);
	} else
		FUNC0(1, "unknown namespace type\n");
	return 0;
}