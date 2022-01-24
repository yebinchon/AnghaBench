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
typedef  int u32 ;
struct TYPE_2__ {int config_size; } ;
struct nvdimm_drvdata {TYPE_1__ nsarea; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct nvdimm_drvdata*) ; 
 int FUNC3 (struct nvdimm_drvdata*) ; 

size_t FUNC4(struct nvdimm_drvdata *ndd)
{
	u32 nslot, space, size;

	/*
	 * Per UEFI 2.7, the minimum size of the Label Storage Area is large
	 * enough to hold 2 index blocks and 2 labels.  The minimum index
	 * block size is 256 bytes. The label size is 128 for namespaces
	 * prior to version 1.2 and at minimum 256 for version 1.2 and later.
	 */
	nslot = FUNC2(ndd);
	space = ndd->nsarea.config_size - nslot * FUNC3(ndd);
	size = FUNC0(nslot) * 2;
	if (size <= space && nslot >= 2)
		return size / 2;

	FUNC1(ndd->dev, "label area (%d) too small to host (%d byte) labels\n",
			ndd->nsarea.config_size, FUNC3(ndd));
	return 0;
}