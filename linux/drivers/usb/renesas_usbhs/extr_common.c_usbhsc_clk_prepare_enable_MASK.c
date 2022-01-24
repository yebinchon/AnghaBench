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
struct usbhs_priv {int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC4(struct usbhs_priv *priv)
{
	int i, ret;

	if (!FUNC3(priv))
		return 0;

	for (i = 0; i < FUNC0(priv->clks); i++) {
		ret = FUNC2(priv->clks[i]);
		if (ret) {
			while (--i >= 0)
				FUNC1(priv->clks[i]);
			return ret;
		}
	}

	return ret;
}