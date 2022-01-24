#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct TYPE_7__ {int active_low; TYPE_3__ rcdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  membase; } ;
struct uniphier_glue_reset_priv {TYPE_4__* clk; TYPE_2__* data; int /*<<< orphan*/ * rst; TYPE_1__ rdata; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
typedef  int resource_size_t ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int nclks; int nrsts; char** reset_names; int /*<<< orphan*/ * clock_names; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_CLKS ; 
 int MAX_RSTS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_4__*) ; 
 int FUNC4 (int,TYPE_4__*) ; 
 int FUNC5 (struct device*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct resource*) ; 
 struct uniphier_glue_reset_priv* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char const*) ; 
 int FUNC9 (struct device*,TYPE_3__*) ; 
 TYPE_2__* FUNC10 (struct device*) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct uniphier_glue_reset_priv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_simple_ops ; 
 int FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct uniphier_glue_reset_priv *priv;
	struct resource *res;
	resource_size_t size;
	const char *name;
	int i, ret, nr;

	priv = FUNC7(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->data = FUNC10(dev);
	if (FUNC2(!priv->data || priv->data->nclks > MAX_CLKS ||
		    priv->data->nrsts > MAX_RSTS))
		return -EINVAL;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	size = FUNC15(res);
	priv->rdata.membase = FUNC6(dev, res);
	if (FUNC0(priv->rdata.membase))
		return FUNC1(priv->rdata.membase);

	for (i = 0; i < priv->data->nclks; i++)
		priv->clk[i].id = priv->data->clock_names[i];
	ret = FUNC5(dev, priv->data->nclks, priv->clk);
	if (ret)
		return ret;

	for (i = 0; i < priv->data->nrsts; i++) {
		name = priv->data->reset_names[i];
		priv->rst[i] = FUNC8(dev, name);
		if (FUNC0(priv->rst[i]))
			return FUNC1(priv->rst[i]);
	}

	ret = FUNC4(priv->data->nclks, priv->clk);
	if (ret)
		return ret;

	for (nr = 0; nr < priv->data->nrsts; nr++) {
		ret = FUNC14(priv->rst[nr]);
		if (ret)
			goto out_rst_assert;
	}

	FUNC16(&priv->rdata.lock);
	priv->rdata.rcdev.owner = THIS_MODULE;
	priv->rdata.rcdev.nr_resets = size * BITS_PER_BYTE;
	priv->rdata.rcdev.ops = &reset_simple_ops;
	priv->rdata.rcdev.of_node = dev->of_node;
	priv->rdata.active_low = true;

	FUNC12(pdev, priv);

	ret = FUNC9(dev, &priv->rdata.rcdev);
	if (ret)
		goto out_rst_assert;

	return 0;

out_rst_assert:
	while (nr--)
		FUNC13(priv->rst[nr]);

	FUNC3(priv->data->nclks, priv->clk);

	return ret;
}