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
struct usbhs_priv {int /*<<< orphan*/ ** clks; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct usbhs_priv *priv)
{
	if (!FUNC4(priv))
		return 0;

	/* The first clock should exist */
	priv->clks[0] = FUNC3(FUNC2(dev), 0);
	if (FUNC0(priv->clks[0]))
		return FUNC1(priv->clks[0]);

	/*
	 * To backward compatibility with old DT, this driver checks the return
	 * value if it's -ENOENT or not.
	 */
	priv->clks[1] = FUNC3(FUNC2(dev), 1);
	if (FUNC1(priv->clks[1]) == -ENOENT)
		priv->clks[1] = NULL;
	else if (FUNC0(priv->clks[1]))
		return FUNC1(priv->clks[1]);

	return 0;
}