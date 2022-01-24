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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct nvdimm_drvdata {int /*<<< orphan*/  dev; } ;
struct nd_namespace_label {void* checksum; int /*<<< orphan*/  slot; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  checksum ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct nvdimm_drvdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nd_namespace_label*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvdimm_drvdata*) ; 

__attribute__((used)) static bool FUNC7(struct nvdimm_drvdata *ndd,
		struct nd_namespace_label *nd_label, u32 slot)
{
	/* check that we are written where we expect to be written */
	if (slot != FUNC1(nd_label->slot))
		return false;

	/* check checksum */
	if (FUNC4(ndd, checksum)) {
		u64 sum, sum_save;

		sum_save = FUNC2(nd_label->checksum);
		nd_label->checksum = FUNC0(0);
		sum = FUNC5(nd_label, FUNC6(ndd), 1);
		nd_label->checksum = FUNC0(sum_save);
		if (sum != sum_save) {
			FUNC3(ndd->dev, "fail checksum. slot: %d expect: %#llx\n",
				slot, sum);
			return false;
		}
	}

	return true;
}