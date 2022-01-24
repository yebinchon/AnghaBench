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
struct typec_mux_desc {int /*<<< orphan*/  drvdata; int /*<<< orphan*/  fwnode; scalar_t__ set; } ;
struct TYPE_5__ {int /*<<< orphan*/  driver_data; int /*<<< orphan*/ * type; int /*<<< orphan*/ * class; int /*<<< orphan*/  fwnode; struct device* parent; } ;
struct typec_mux {TYPE_1__ dev; scalar_t__ set; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct typec_mux* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct typec_mux* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  typec_mux_class ; 
 int /*<<< orphan*/  typec_mux_dev_type ; 

struct typec_mux *
FUNC8(struct device *parent, const struct typec_mux_desc *desc)
{
	struct typec_mux *mux;
	int ret;

	if (!desc || !desc->set)
		return FUNC0(-EINVAL);

	mux = FUNC6(sizeof(*mux), GFP_KERNEL);
	if (!mux)
		return FUNC0(-ENOMEM);

	mux->set = desc->set;

	FUNC5(&mux->dev);
	mux->dev.parent = parent;
	mux->dev.fwnode = desc->fwnode;
	mux->dev.class = &typec_mux_class;
	mux->dev.type = &typec_mux_dev_type;
	mux->dev.driver_data = desc->drvdata;
	FUNC3(&mux->dev, "%s-mux", FUNC2(parent));

	ret = FUNC4(&mux->dev);
	if (ret) {
		FUNC1(parent, "failed to register mux (%d)\n", ret);
		FUNC7(&mux->dev);
		return FUNC0(ret);
	}

	return mux;
}