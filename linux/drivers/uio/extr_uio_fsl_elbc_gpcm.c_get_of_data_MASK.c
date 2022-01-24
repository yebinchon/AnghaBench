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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int dummy; } ;
struct fsl_elbc_gpcm {char* name; int /*<<< orphan*/  dev; int /*<<< orphan*/  bank; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct fsl_elbc_gpcm*,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,char const**) ; 
 int FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fsl_elbc_gpcm*,char const*) ; 

__attribute__((used)) static int FUNC8(struct fsl_elbc_gpcm *priv, struct device_node *node,
		       struct resource *res, u32 *reg_br,
		       u32 *reg_or, unsigned int *irq, char **name)
{
	const char *dt_name;
	const char *type;
	int ret;

	/* get the memory resource */
	ret = FUNC4(node, 0, res);
	if (ret) {
		FUNC1(priv->dev, "failed to get resource\n");
		return ret;
	}

	/* get the bank number */
	ret = FUNC6(node, "reg", &priv->bank);
	if (ret) {
		FUNC1(priv->dev, "failed to get bank number\n");
		return ret;
	}

	/* get BR value to set */
	ret = FUNC6(node, "elbc-gpcm-br", reg_br);
	if (ret) {
		FUNC1(priv->dev, "missing elbc-gpcm-br value\n");
		return ret;
	}

	/* get OR value to set */
	ret = FUNC6(node, "elbc-gpcm-or", reg_or);
	if (ret) {
		FUNC1(priv->dev, "missing elbc-gpcm-or value\n");
		return ret;
	}

	/* get optional peripheral type */
	priv->name = "generic";
	if (FUNC5(node, "device_type", &type) == 0)
		FUNC7(priv, type);

	/* get optional irq value */
	*irq = FUNC2(node, 0);

	/* sanity check device tree data */
	ret = FUNC0(priv, res, *reg_br, *reg_or);
	if (ret)
		return ret;

	/* get optional uio name */
	if (FUNC5(node, "uio_name", &dt_name) != 0)
		dt_name = "eLBC_GPCM";
	*name = FUNC3(dt_name, GFP_KERNEL);
	if (!*name)
		return -ENOMEM;

	return 0;
}