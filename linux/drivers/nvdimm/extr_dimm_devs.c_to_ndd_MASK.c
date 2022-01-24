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
struct nvdimm_drvdata {int dummy; } ;
struct nvdimm {int /*<<< orphan*/  dev; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nvdimm_drvdata* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct nvdimm_drvdata *FUNC3(struct nd_mapping *nd_mapping)
{
	struct nvdimm *nvdimm = nd_mapping->nvdimm;

	FUNC0(!FUNC2(&nvdimm->dev));

	return FUNC1(&nvdimm->dev);
}