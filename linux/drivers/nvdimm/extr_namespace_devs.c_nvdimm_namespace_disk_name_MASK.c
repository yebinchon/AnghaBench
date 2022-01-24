#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nd_region {int id; } ;
struct nd_namespace_pmem {int id; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct nd_namespace_common {TYPE_1__ dev; scalar_t__ claim; } ;
struct nd_namespace_blk {int id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,...) ; 
 struct nd_namespace_blk* FUNC5 (TYPE_1__*) ; 
 struct nd_namespace_pmem* FUNC6 (TYPE_1__*) ; 
 struct nd_region* FUNC7 (int /*<<< orphan*/ ) ; 

const char *FUNC8(struct nd_namespace_common *ndns,
		char *name)
{
	struct nd_region *nd_region = FUNC7(ndns->dev.parent);
	const char *suffix = NULL;

	if (ndns->claim && FUNC3(ndns->claim))
		suffix = "s";

	if (FUNC2(&ndns->dev) || FUNC1(&ndns->dev)) {
		int nsidx = 0;

		if (FUNC2(&ndns->dev)) {
			struct nd_namespace_pmem *nspm;

			nspm = FUNC6(&ndns->dev);
			nsidx = nspm->id;
		}

		if (nsidx)
			FUNC4(name, "pmem%d.%d%s", nd_region->id, nsidx,
					suffix ? suffix : "");
		else
			FUNC4(name, "pmem%d%s", nd_region->id,
					suffix ? suffix : "");
	} else if (FUNC0(&ndns->dev)) {
		struct nd_namespace_blk *nsblk;

		nsblk = FUNC5(&ndns->dev);
		FUNC4(name, "ndblk%d.%d%s", nd_region->id, nsblk->id,
				suffix ? suffix : "");
	} else {
		return NULL;
	}

	return name;
}