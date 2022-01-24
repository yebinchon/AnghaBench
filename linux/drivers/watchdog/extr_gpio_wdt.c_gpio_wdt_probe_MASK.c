#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {unsigned int max_hw_heartbeat_ms; int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct gpio_wdt_priv {TYPE_1__ wdd; scalar_t__ always_running; int /*<<< orphan*/  gpiod; int /*<<< orphan*/  hw_algo; } ;
struct device_node {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOD_IN ; 
 int GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  HW_ALGO_LEVEL ; 
 int /*<<< orphan*/  HW_ALGO_TOGGLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOFT_TIMEOUT_DEF ; 
 int /*<<< orphan*/  SOFT_TIMEOUT_MIN ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *,int) ; 
 struct gpio_wdt_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  gpio_wdt_ident ; 
 int /*<<< orphan*/  gpio_wdt_ops ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 scalar_t__ FUNC6 (struct device_node*,char*) ; 
 int FUNC7 (struct device_node*,char*,char const**) ; 
 int FUNC8 (struct device_node*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct gpio_wdt_priv*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct gpio_wdt_priv*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct gpio_wdt_priv *priv;
	enum gpiod_flags gflags;
	unsigned int hw_margin;
	const char *algo;
	int ret;

	priv = FUNC3(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC9(pdev, priv);

	ret = FUNC7(np, "hw_algo", &algo);
	if (ret)
		return ret;
	if (!FUNC10(algo, "toggle")) {
		priv->hw_algo = HW_ALGO_TOGGLE;
		gflags = GPIOD_IN;
	} else if (!FUNC10(algo, "level")) {
		priv->hw_algo = HW_ALGO_LEVEL;
		gflags = GPIOD_OUT_LOW;
	} else {
		return -EINVAL;
	}

	priv->gpiod = FUNC2(dev, NULL, gflags);
	if (FUNC0(priv->gpiod))
		return FUNC1(priv->gpiod);

	ret = FUNC8(np,
				   "hw_margin_ms", &hw_margin);
	if (ret)
		return ret;
	/* Disallow values lower than 2 and higher than 65535 ms */
	if (hw_margin < 2 || hw_margin > 65535)
		return -EINVAL;

	priv->always_running = FUNC6(np,
						     "always-running");

	FUNC12(&priv->wdd, priv);

	priv->wdd.info		= &gpio_wdt_ident;
	priv->wdd.ops		= &gpio_wdt_ops;
	priv->wdd.min_timeout	= SOFT_TIMEOUT_MIN;
	priv->wdd.max_hw_heartbeat_ms = hw_margin;
	priv->wdd.parent	= dev;
	priv->wdd.timeout	= SOFT_TIMEOUT_DEF;

	FUNC11(&priv->wdd, 0, dev);
	FUNC13(&priv->wdd, nowayout);

	FUNC14(&priv->wdd);

	if (priv->always_running)
		FUNC5(&priv->wdd);

	return FUNC4(dev, &priv->wdd);
}