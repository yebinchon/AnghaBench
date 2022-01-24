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
typedef  scalar_t__ u32 ;
struct nvdimm_drvdata {int /*<<< orphan*/  dev; } ;
struct nd_namespace_index {int dummy; } ;

/* Variables and functions */
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long*) ; 
 scalar_t__ FUNC2 (unsigned long*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvdimm_drvdata*,struct nd_namespace_index**,unsigned long**,scalar_t__*) ; 

u32 FUNC5(struct nvdimm_drvdata *ndd)
{
	struct nd_namespace_index *nsindex;
	unsigned long *free;
	u32 nslot, slot;

	if (!FUNC4(ndd, &nsindex, &free, &nslot))
		return UINT_MAX;

	FUNC0(!FUNC3(ndd->dev));

	slot = FUNC2(free, nslot, 0);
	if (slot == nslot)
		return UINT_MAX;

	FUNC1(slot, free);

	return slot;
}