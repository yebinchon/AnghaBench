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
struct nd_namespace_pmem {int /*<<< orphan*/  const* uuid; } ;
struct nd_namespace_blk {int /*<<< orphan*/  const* uuid; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 struct nd_namespace_blk* FUNC2 (struct device*) ; 
 struct nd_namespace_pmem* FUNC3 (struct device*) ; 

const u8 *FUNC4(struct device *dev)
{
	static const u8 null_uuid[16];

	if (!dev)
		return null_uuid;

	if (FUNC1(dev)) {
		struct nd_namespace_pmem *nspm = FUNC3(dev);

		return nspm->uuid;
	} else if (FUNC0(dev)) {
		struct nd_namespace_blk *nsblk = FUNC2(dev);

		return nsblk->uuid;
	} else
		return null_uuid;
}