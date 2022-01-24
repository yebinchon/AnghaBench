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
struct rtc_device {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ds1286_priv {struct rtc_device* rtc; int /*<<< orphan*/  lock; struct rtc_device* rtcregs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct rtc_device* FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 struct ds1286_priv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct rtc_device* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds1286_ops ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct ds1286_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct rtc_device *rtc;
	struct resource *res;
	struct ds1286_priv *priv;

	priv = FUNC3(&pdev->dev, sizeof(struct ds1286_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	priv->rtcregs = FUNC2(&pdev->dev, res);
	if (FUNC0(priv->rtcregs))
		return FUNC1(priv->rtcregs);

	FUNC7(&priv->lock);
	FUNC6(pdev, priv);
	rtc = FUNC4(&pdev->dev, "ds1286", &ds1286_ops,
					THIS_MODULE);
	if (FUNC0(rtc))
		return FUNC1(rtc);
	priv->rtc = rtc;
	return 0;
}