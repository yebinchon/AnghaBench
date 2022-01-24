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
typedef  int /*<<< orphan*/  u32 ;
struct nvdimm_drvdata {int /*<<< orphan*/  dev; } ;
struct nd_namespace_index {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvdimm_drvdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvdimm_drvdata*,struct nd_namespace_index**,unsigned long**,int /*<<< orphan*/ *) ; 

u32 FUNC5(struct nvdimm_drvdata *ndd)
{
	struct nd_namespace_index *nsindex;
	unsigned long *free;
	u32 nslot;

	FUNC0(!FUNC2(ndd->dev));

	if (!FUNC4(ndd, &nsindex, &free, &nslot))
		return FUNC3(ndd);

	return FUNC1(free, nslot);
}