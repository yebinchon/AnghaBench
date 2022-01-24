#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct typec_switch_desc {int /*<<< orphan*/  drvdata; int /*<<< orphan*/  fwnode; scalar_t__ set; } ;
struct TYPE_5__ {int /*<<< orphan*/  driver_data; int /*<<< orphan*/ * type; int /*<<< orphan*/ * class; int /*<<< orphan*/  fwnode; struct device* parent; } ;
struct typec_switch {TYPE_1__ dev; scalar_t__ set; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct typec_switch* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct typec_switch* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  typec_mux_class ; 
 int /*<<< orphan*/  typec_switch_dev_type ; 

struct typec_switch *
FUNC8(struct device *parent,
		      const struct typec_switch_desc *desc)
{
	struct typec_switch *sw;
	int ret;

	if (!desc || !desc->set)
		return FUNC0(-EINVAL);

	sw = FUNC6(sizeof(*sw), GFP_KERNEL);
	if (!sw)
		return FUNC0(-ENOMEM);

	sw->set = desc->set;

	FUNC5(&sw->dev);
	sw->dev.parent = parent;
	sw->dev.fwnode = desc->fwnode;
	sw->dev.class = &typec_mux_class;
	sw->dev.type = &typec_switch_dev_type;
	sw->dev.driver_data = desc->drvdata;
	FUNC3(&sw->dev, "%s-switch", FUNC2(parent));

	ret = FUNC4(&sw->dev);
	if (ret) {
		FUNC1(parent, "failed to register switch (%d)\n", ret);
		FUNC7(&sw->dev);
		return FUNC0(ret);
	}

	return sw;
}