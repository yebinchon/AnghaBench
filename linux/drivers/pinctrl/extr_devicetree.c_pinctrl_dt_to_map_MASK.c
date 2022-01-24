#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct property {char* name; int /*<<< orphan*/ * value; } ;
struct pinctrl_dev {int dummy; } ;
struct pinctrl {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  phandle ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*,int) ; 
 int FUNC3 (struct pinctrl*,char const*) ; 
 int FUNC4 (struct pinctrl*,struct pinctrl_dev*,char const*,struct device_node*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ) ; 
 struct property* FUNC8 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 int FUNC12 (struct device_node*,char*,int,char const**) ; 
 int /*<<< orphan*/  FUNC13 (struct pinctrl*) ; 
 int FUNC14 (char*) ; 

int FUNC15(struct pinctrl *p, struct pinctrl_dev *pctldev)
{
	struct device_node *np = p->dev->of_node;
	int state, ret;
	char *propname;
	struct property *prop;
	const char *statename;
	const __be32 *list;
	int size, config;
	phandle phandle;
	struct device_node *np_config;

	/* CONFIG_OF enabled, p->dev not instantiated from DT */
	if (!np) {
		if (FUNC9())
			FUNC1(p->dev,
				"no of_node; not parsing pinctrl DT\n");
		return 0;
	}

	/* We may store pointers to property names within the node */
	FUNC10(np);

	/* For each defined state ID */
	for (state = 0; ; state++) {
		/* Retrieve the pinctrl-* property */
		propname = FUNC5(GFP_KERNEL, "pinctrl-%d", state);
		prop = FUNC8(np, propname, &size);
		FUNC6(propname);
		if (!prop) {
			if (state == 0) {
				FUNC11(np);
				return -ENODEV;
			}
			break;
		}
		list = prop->value;
		size /= sizeof(*list);

		/* Determine whether pinctrl-names property names the state */
		ret = FUNC12(np, "pinctrl-names",
						    state, &statename);
		/*
		 * If not, statename is just the integer state ID. But rather
		 * than dynamically allocate it and have to free it later,
		 * just point part way into the property name for the string.
		 */
		if (ret < 0)
			statename = prop->name + FUNC14("pinctrl-");

		/* For every referenced pin configuration node in it */
		for (config = 0; config < size; config++) {
			phandle = FUNC0(list++);

			/* Look up the pin configuration node */
			np_config = FUNC7(phandle);
			if (!np_config) {
				FUNC2(p->dev,
					"prop %s index %i invalid phandle\n",
					prop->name, config);
				ret = -EINVAL;
				goto err;
			}

			/* Parse the node */
			ret = FUNC4(p, pctldev, statename,
						   np_config);
			FUNC11(np_config);
			if (ret < 0)
				goto err;
		}

		/* No entries in DT? Generate a dummy state table entry */
		if (!size) {
			ret = FUNC3(p, statename);
			if (ret < 0)
				goto err;
		}
	}

	return 0;

err:
	FUNC13(p);
	return ret;
}