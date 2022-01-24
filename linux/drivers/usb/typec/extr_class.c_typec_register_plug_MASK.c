#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct typec_plug_desc {int index; } ;
struct TYPE_5__ {int /*<<< orphan*/ * type; TYPE_4__* parent; int /*<<< orphan*/  class; } ;
struct typec_plug {int index; TYPE_1__ dev; int /*<<< orphan*/  mode_ids; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct typec_cable {TYPE_4__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct typec_plug* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct typec_plug* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  typec_class ; 
 int /*<<< orphan*/  typec_plug_dev_type ; 

struct typec_plug *FUNC9(struct typec_cable *cable,
				       struct typec_plug_desc *desc)
{
	struct typec_plug *plug;
	char name[8];
	int ret;

	plug = FUNC6(sizeof(*plug), GFP_KERNEL);
	if (!plug)
		return FUNC0(-ENOMEM);

	FUNC8(name, "plug%d", desc->index);

	FUNC5(&plug->mode_ids);
	plug->index = desc->index;
	plug->dev.class = typec_class;
	plug->dev.parent = &cable->dev;
	plug->dev.type = &typec_plug_dev_type;
	FUNC3(&plug->dev, "%s-%s", FUNC2(cable->dev.parent), name);

	ret = FUNC4(&plug->dev);
	if (ret) {
		FUNC1(&cable->dev, "failed to register plug (%d)\n", ret);
		FUNC7(&plug->dev);
		return FUNC0(ret);
	}

	return plug;
}