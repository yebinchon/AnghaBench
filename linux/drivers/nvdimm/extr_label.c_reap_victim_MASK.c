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
struct nd_mapping {int dummy; } ;
struct nd_label_ent {int /*<<< orphan*/ * label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvdimm_drvdata*,int /*<<< orphan*/ ) ; 
 struct nvdimm_drvdata* FUNC2 (struct nd_mapping*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvdimm_drvdata*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nd_mapping *nd_mapping,
		struct nd_label_ent *victim)
{
	struct nvdimm_drvdata *ndd = FUNC2(nd_mapping);
	u32 slot = FUNC3(ndd, victim->label);

	FUNC0(ndd->dev, "free: %d\n", slot);
	FUNC1(ndd, slot);
	victim->label = NULL;
}