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
struct pxa3xx_gcu_priv {int /*<<< orphan*/  shared_phys; int /*<<< orphan*/  shared; int /*<<< orphan*/  misc_dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHARED_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct pxa3xx_gcu_priv* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa3xx_gcu_priv*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct pxa3xx_gcu_priv *priv = FUNC2(pdev);
	struct device *dev = &pdev->dev;

	FUNC4(priv);
	FUNC1(&priv->misc_dev);
	FUNC0(dev, SHARED_SIZE, priv->shared, priv->shared_phys);
	FUNC3(dev, priv);

	return 0;
}