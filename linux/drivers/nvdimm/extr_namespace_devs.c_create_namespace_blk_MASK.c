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
struct resource {int dummy; } ;
struct nvdimm_drvdata {int /*<<< orphan*/  dev; } ;
struct nd_region {int /*<<< orphan*/  dev; struct nd_interleave_set* nd_set; struct nd_mapping* mapping; } ;
struct nd_namespace_label {scalar_t__ isetcookie; scalar_t__ lbasize; char* uuid; scalar_t__ dpa; int /*<<< orphan*/  name; int /*<<< orphan*/  abstraction_guid; int /*<<< orphan*/  type_guid; } ;
struct device {int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; } ;
struct TYPE_2__ {int /*<<< orphan*/  claim_class; struct device dev; } ;
struct nd_namespace_blk {int id; void* alt_name; void* uuid; TYPE_1__ common; int /*<<< orphan*/ * lbasize; } ;
struct nd_mapping {int dummy; } ;
struct nd_interleave_set {int /*<<< orphan*/ * cookie2; int /*<<< orphan*/  type_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NSLABEL_NAME_LEN ; 
 int NSLABEL_UUID_LEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  abstraction_guid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 struct nd_namespace_blk* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  namespace_blk_device_type ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 scalar_t__ FUNC9 (struct nvdimm_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nd_region*,struct nvdimm_drvdata*,struct resource*,char*,int) ; 
 struct resource* FUNC11 (struct nd_region*,struct nvdimm_drvdata*,struct nd_namespace_blk*,int /*<<< orphan*/ *) ; 
 struct nvdimm_drvdata* FUNC12 (struct nd_mapping*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  type_guid ; 

__attribute__((used)) static struct device *FUNC14(struct nd_region *nd_region,
		struct nd_namespace_label *nd_label, int count)
{

	struct nd_mapping *nd_mapping = &nd_region->mapping[0];
	struct nd_interleave_set *nd_set = nd_region->nd_set;
	struct nvdimm_drvdata *ndd = FUNC12(nd_mapping);
	struct nd_namespace_blk *nsblk;
	char name[NSLABEL_NAME_LEN];
	struct device *dev = NULL;
	struct resource *res;

	if (FUNC9(ndd, type_guid)) {
		if (!FUNC4(&nd_set->type_guid, &nd_label->type_guid)) {
			FUNC3(ndd->dev, "expect type_guid %pUb got %pUb\n",
					&nd_set->type_guid,
					&nd_label->type_guid);
			return FUNC0(-EAGAIN);
		}

		if (nd_label->isetcookie != FUNC1(nd_set->cookie2)) {
			FUNC3(ndd->dev, "expect cookie %#llx got %#llx\n",
					nd_set->cookie2,
					FUNC2(nd_label->isetcookie));
			return FUNC0(-EAGAIN);
		}
	}

	nsblk = FUNC6(sizeof(*nsblk), GFP_KERNEL);
	if (!nsblk)
		return FUNC0(-ENOMEM);
	dev = &nsblk->common.dev;
	dev->type = &namespace_blk_device_type;
	dev->parent = &nd_region->dev;
	nsblk->id = -1;
	nsblk->lbasize = FUNC2(nd_label->lbasize);
	nsblk->uuid = FUNC5(nd_label->uuid, NSLABEL_UUID_LEN,
			GFP_KERNEL);
	if (FUNC9(ndd, abstraction_guid))
		nsblk->common.claim_class
			= FUNC13(&nd_label->abstraction_guid);
	if (!nsblk->uuid)
		goto blk_err;
	FUNC7(name, nd_label->name, NSLABEL_NAME_LEN);
	if (name[0]) {
		nsblk->alt_name = FUNC5(name, NSLABEL_NAME_LEN,
				GFP_KERNEL);
		if (!nsblk->alt_name)
			goto blk_err;
	}
	res = FUNC11(nd_region, ndd, nsblk,
			FUNC2(nd_label->dpa));
	if (!res)
		goto blk_err;
	FUNC10(nd_region, ndd, res, "%d: assign\n", count);
	return dev;
 blk_err:
	FUNC8(dev);
	return FUNC0(-ENXIO);
}