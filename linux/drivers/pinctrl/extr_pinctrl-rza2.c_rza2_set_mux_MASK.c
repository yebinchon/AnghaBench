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
struct rza2_pinctrl_priv {int /*<<< orphan*/  base; int /*<<< orphan*/  dev; } ;
struct pinctrl_dev {int dummy; } ;
struct group_desc {unsigned int num_pins; int /*<<< orphan*/ * pins; } ;
struct function_desc {unsigned int* data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct rza2_pinctrl_priv* FUNC3 (struct pinctrl_dev*) ; 
 struct group_desc* FUNC4 (struct pinctrl_dev*,unsigned int) ; 
 struct function_desc* FUNC5 (struct pinctrl_dev*,unsigned int) ; 
 int /*<<< orphan*/ * port_names ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev, unsigned int selector,
			unsigned int group)
{
	struct rza2_pinctrl_priv *priv = FUNC3(pctldev);
	struct function_desc *func;
	unsigned int i, *psel_val;
	struct group_desc *grp;

	grp = FUNC4(pctldev, group);
	if (!grp)
		return -EINVAL;

	func = FUNC5(pctldev, selector);
	if (!func)
		return -EINVAL;

	psel_val = func->data;

	for (i = 0; i < grp->num_pins; ++i) {
		FUNC2(priv->dev, "Setting P%c_%d to PSEL=%d\n",
			port_names[FUNC1(grp->pins[i])],
			FUNC0(grp->pins[i]),
			psel_val[i]);
		FUNC6(
			priv->base,
			FUNC1(grp->pins[i]),
			FUNC0(grp->pins[i]),
			psel_val[i]);
	}

	return 0;
}