#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ac; } ;
struct raid_template {TYPE_1__ raid_attrs; } ;
struct raid_data {int /*<<< orphan*/  component_count; int /*<<< orphan*/  component_list; } ;
struct TYPE_8__ {int /*<<< orphan*/ * class; int /*<<< orphan*/  parent; int /*<<< orphan*/  release; } ;
struct raid_component {int /*<<< orphan*/  node; TYPE_3__ dev; scalar_t__ num; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,struct device*) ; 
 struct raid_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,scalar_t__) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct raid_component*) ; 
 struct raid_component* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 TYPE_2__ raid_class ; 
 int /*<<< orphan*/  raid_component_release ; 

int FUNC12(struct raid_template *r,struct device *raid_dev,
		       struct device *component_dev)
{
	struct device *cdev =
		FUNC1(&r->raid_attrs.ac,
						      raid_dev);
	struct raid_component *rc;
	struct raid_data *rd = FUNC2(cdev);
	int err;

	rc = FUNC8(sizeof(*rc), GFP_KERNEL);
	if (!rc)
		return -ENOMEM;

	FUNC0(&rc->node);
	FUNC5(&rc->dev);
	rc->dev.release = raid_component_release;
	rc->dev.parent = FUNC6(component_dev);
	rc->num = rd->component_count++;

	FUNC3(&rc->dev, "component-%d", rc->num);
	FUNC9(&rc->node, &rd->component_list);
	rc->dev.class = &raid_class.class;
	err = FUNC4(&rc->dev);
	if (err)
		goto err_out;

	return 0;

err_out:
	FUNC10(&rc->node);
	rd->component_count--;
	FUNC11(component_dev);
	FUNC7(rc);
	return err;
}