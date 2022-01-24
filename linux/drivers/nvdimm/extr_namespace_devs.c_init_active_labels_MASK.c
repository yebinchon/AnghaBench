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
struct nvdimm {int /*<<< orphan*/  flags; int /*<<< orphan*/  busy; int /*<<< orphan*/  dev; } ;
struct nd_region {int ndr_mappings; int /*<<< orphan*/  dev; struct nd_mapping* mapping; } ;
struct nd_namespace_label {int /*<<< orphan*/  flags; } ;
struct nd_mapping {int /*<<< orphan*/  lock; int /*<<< orphan*/  labels; struct nvdimm_drvdata* ndd; struct nvdimm* nvdimm; } ;
struct nd_label_ent {int /*<<< orphan*/  list; struct nd_namespace_label* label; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NDD_ALIASING ; 
 int /*<<< orphan*/  NDD_LOCKED ; 
 int /*<<< orphan*/  NDD_NOBLK ; 
 int /*<<< orphan*/  NSLABEL_FLAG_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct nd_region*),struct nd_region*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvdimm_drvdata*) ; 
 struct nd_label_ent* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct nd_namespace_label* FUNC13 (struct nvdimm_drvdata*,int) ; 
 int FUNC14 (struct nvdimm_drvdata*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nvdimm_drvdata* FUNC16 (struct nd_mapping*) ; 

__attribute__((used)) static int FUNC17(struct nd_region *nd_region)
{
	int i;

	for (i = 0; i < nd_region->ndr_mappings; i++) {
		struct nd_mapping *nd_mapping = &nd_region->mapping[i];
		struct nvdimm_drvdata *ndd = FUNC16(nd_mapping);
		struct nvdimm *nvdimm = nd_mapping->nvdimm;
		struct nd_label_ent *label_ent;
		int count, j;

		/*
		 * If the dimm is disabled then we may need to prevent
		 * the region from being activated.
		 */
		if (!ndd) {
			if (FUNC15(NDD_LOCKED, &nvdimm->flags))
				/* fail, label data may be unreadable */;
			else if (FUNC15(NDD_ALIASING, &nvdimm->flags))
				/* fail, labels needed to disambiguate dpa */;
			else
				return 0;

			FUNC5(&nd_region->dev, "%s: is %s, failing probe\n",
					FUNC6(&nd_mapping->nvdimm->dev),
					FUNC15(NDD_LOCKED, &nvdimm->flags)
					? "locked" : "disabled");
			return -ENXIO;
		}
		nd_mapping->ndd = ndd;
		FUNC2(&nvdimm->busy);
		FUNC8(ndd);

		count = FUNC14(ndd);
		FUNC4(ndd->dev, "count: %d\n", count);
		if (!count)
			continue;
		for (j = 0; j < count; j++) {
			struct nd_namespace_label *label;

			label_ent = FUNC9(sizeof(*label_ent), GFP_KERNEL);
			if (!label_ent)
				break;
			label = FUNC13(ndd, j);
			if (FUNC15(NDD_NOBLK, &nvdimm->flags)) {
				u32 flags = FUNC1(label->flags);

				flags &= ~NSLABEL_FLAG_LOCAL;
				label->flags = FUNC0(flags);
			}
			label_ent->label = label;

			FUNC11(&nd_mapping->lock);
			FUNC10(&label_ent->list, &nd_mapping->labels);
			FUNC12(&nd_mapping->lock);
		}

		if (j < count)
			break;
	}

	if (i < nd_region->ndr_mappings) {
		FUNC3(nd_region);
		return -ENOMEM;
	}

	return FUNC7(&nd_region->dev, deactivate_labels,
			nd_region);
}