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
struct regmap {int dummy; } ;
struct of_phandle_args {int /*<<< orphan*/  np; int /*<<< orphan*/ * args; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC6 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	int ret;
	struct device_node *np = dev->of_node;
	struct of_phandle_args args;
	struct regmap *regmap;

	regmap = FUNC6(np,
						 "ti,syscon-unaligned-access");
	if (FUNC0(regmap)) {
		FUNC1(dev, "can't get ti,syscon-unaligned-access\n");
		return -EINVAL;
	}

	ret = FUNC4(np, "ti,syscon-unaligned-access",
					       2, 0, &args);
	if (ret) {
		FUNC2(dev, "failed to parse ti,syscon-unaligned-access\n");
		return ret;
	}

	ret = FUNC5(regmap, args.args[0], args.args[1],
				 args.args[1]);
	if (ret)
		FUNC2(dev, "failed to enable unaligned access\n");

	FUNC3(args.np);

	return ret;
}