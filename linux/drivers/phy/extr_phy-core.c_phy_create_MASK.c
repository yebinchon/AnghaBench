#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct phy_ops {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; struct device* parent; int /*<<< orphan*/  class; } ;
struct phy {int id; TYPE_1__ dev; int /*<<< orphan*/ * pwr; struct phy_ops const* ops; int /*<<< orphan*/  mutex; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 struct phy* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct phy*) ; 
 struct phy* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  phy_class ; 
 int /*<<< orphan*/  phy_ida ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_1__*,char*) ; 

struct phy *FUNC18(struct device *dev, struct device_node *node,
		       const struct phy_ops *ops)
{
	int ret;
	int id;
	struct phy *phy;

	if (FUNC3(!dev))
		return FUNC0(-EINVAL);

	phy = FUNC11(sizeof(*phy), GFP_KERNEL);
	if (!phy)
		return FUNC0(-ENOMEM);

	id = FUNC9(&phy_ida, 0, 0, GFP_KERNEL);
	if (id < 0) {
		FUNC4(dev, "unable to get id\n");
		ret = id;
		goto free_phy;
	}

	FUNC8(&phy->dev);
	FUNC12(&phy->mutex);

	phy->dev.class = phy_class;
	phy->dev.parent = dev;
	phy->dev.of_node = node ?: dev->of_node;
	phy->id = id;
	phy->ops = ops;

	ret = FUNC6(&phy->dev, "phy-%s.%d", FUNC5(dev), id);
	if (ret)
		goto put_dev;

	/* phy-supply */
	phy->pwr = FUNC17(&phy->dev, "phy");
	if (FUNC1(phy->pwr)) {
		ret = FUNC2(phy->pwr);
		if (ret == -EPROBE_DEFER)
			goto put_dev;

		phy->pwr = NULL;
	}

	ret = FUNC7(&phy->dev);
	if (ret)
		goto put_dev;

	if (FUNC14(dev)) {
		FUNC13(&phy->dev);
		FUNC15(&phy->dev);
	}

	return phy;

put_dev:
	FUNC16(&phy->dev);  /* calls phy_release() which frees resources */
	return FUNC0(ret);

free_phy:
	FUNC10(phy);
	return FUNC0(ret);
}