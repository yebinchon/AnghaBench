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
struct nd_namespace_pmem {int /*<<< orphan*/ * uuid; } ;
struct nd_namespace_blk {int /*<<< orphan*/ * uuid; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 struct nd_namespace_blk* FUNC3 (struct device*) ; 
 struct nd_namespace_pmem* FUNC4 (struct device*) ; 

__attribute__((used)) static u8 *FUNC5(struct device *dev)
{
	if (FUNC2(dev)) {
		struct nd_namespace_pmem *nspm = FUNC4(dev);

		return nspm->uuid;
	} else if (FUNC1(dev)) {
		struct nd_namespace_blk *nsblk = FUNC3(dev);

		return nsblk->uuid;
	} else
		return FUNC0(-ENXIO);
}