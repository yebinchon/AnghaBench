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
struct nd_region {int /*<<< orphan*/  ns_ida; } ;
struct nd_namespace_pmem {scalar_t__ id; struct nd_namespace_pmem* uuid; struct nd_namespace_pmem* alt_name; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nd_namespace_pmem*) ; 
 struct nd_namespace_pmem* FUNC2 (struct device*) ; 
 struct nd_region* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct nd_namespace_pmem *nspm = FUNC2(dev);
	struct nd_region *nd_region = FUNC3(dev->parent);

	if (nspm->id >= 0)
		FUNC0(&nd_region->ns_ida, nspm->id);
	FUNC1(nspm->alt_name);
	FUNC1(nspm->uuid);
	FUNC1(nspm);
}