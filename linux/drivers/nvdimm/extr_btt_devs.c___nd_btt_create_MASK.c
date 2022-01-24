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
struct nd_region {int /*<<< orphan*/  btt_ida; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct nd_namespace_common {int /*<<< orphan*/  claim; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * parent; } ;
struct nd_btt {scalar_t__ id; unsigned long lbasize; int /*<<< orphan*/  ndns; struct device dev; int /*<<< orphan*/ * uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct nd_namespace_common*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct nd_btt*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct nd_btt* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd_btt_attribute_groups ; 
 int /*<<< orphan*/  nd_btt_device_type ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static struct device *FUNC11(struct nd_region *nd_region,
		unsigned long lbasize, u8 *uuid,
		struct nd_namespace_common *ndns)
{
	struct nd_btt *nd_btt;
	struct device *dev;

	nd_btt = FUNC9(sizeof(*nd_btt), GFP_KERNEL);
	if (!nd_btt)
		return NULL;

	nd_btt->id = FUNC5(&nd_region->btt_ida, 0, 0, GFP_KERNEL);
	if (nd_btt->id < 0)
		goto out_nd_btt;

	nd_btt->lbasize = lbasize;
	if (uuid) {
		uuid = FUNC8(uuid, 16, GFP_KERNEL);
		if (!uuid)
			goto out_put_id;
	}
	nd_btt->uuid = uuid;
	dev = &nd_btt->dev;
	FUNC3(dev, "btt%d.%d", nd_region->id, nd_btt->id);
	dev->parent = &nd_region->dev;
	dev->type = &nd_btt_device_type;
	dev->groups = nd_btt_attribute_groups;
	FUNC4(&nd_btt->dev);
	if (ndns && !FUNC0(&nd_btt->dev, ndns, &nd_btt->ndns)) {
		FUNC1(&ndns->dev, "failed, already claimed by %s\n",
				FUNC2(ndns->claim));
		FUNC10(dev);
		return NULL;
	}
	return dev;

out_put_id:
	FUNC6(&nd_region->btt_ida, nd_btt->id);

out_nd_btt:
	FUNC7(nd_btt);
	return NULL;
}