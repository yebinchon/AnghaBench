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
struct device {TYPE_1__* of_node; } ;
struct platform_device {struct device dev; } ;
struct lantiq_rcu_reset_priv {void* status_offset; void* reset_offset; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
			       struct lantiq_rcu_reset_priv *priv)
{
	struct device *dev = &pdev->dev;
	const __be32 *offset;

	priv->regmap = FUNC5(dev->of_node->parent);
	if (FUNC0(priv->regmap)) {
		FUNC3(&pdev->dev, "Failed to lookup RCU regmap\n");
		return FUNC1(priv->regmap);
	}

	offset = FUNC4(dev->of_node, 0, NULL, NULL);
	if (!offset) {
		FUNC3(&pdev->dev, "Failed to get RCU reset offset\n");
		return -ENOENT;
	}
	priv->reset_offset = FUNC2(*offset);

	offset = FUNC4(dev->of_node, 1, NULL, NULL);
	if (!offset) {
		FUNC3(&pdev->dev, "Failed to get RCU status offset\n");
		return -ENOENT;
	}
	priv->status_offset = FUNC2(*offset);

	return 0;
}