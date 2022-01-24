#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct rza2_pinctrl_priv {int /*<<< orphan*/  dev; } ;
struct property {int length; } ;
struct TYPE_3__ {char* group; char* function; } ;
struct TYPE_4__ {TYPE_1__ mux; } ;
struct pinctrl_map {TYPE_2__ data; int /*<<< orphan*/  type; } ;
struct pinctrl_dev {int dummy; } ;
struct device_node {char* name; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int MUX_PIN_ID_MASK ; 
 int /*<<< orphan*/  PIN_MAP_TYPE_MUX_GROUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned int* FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 char** FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct pinctrl_map* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct property* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device_node*,char*,int,unsigned int*) ; 
 struct rza2_pinctrl_priv* FUNC9 (struct pinctrl_dev*) ; 
 int FUNC10 (struct pinctrl_dev*,char*,unsigned int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct pinctrl_dev*,int) ; 
 int FUNC12 (struct pinctrl_dev*,char*,char const**,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (struct pinctrl_dev*,int) ; 

__attribute__((used)) static int FUNC14(struct pinctrl_dev *pctldev,
			       struct device_node *np,
			       struct pinctrl_map **map,
			       unsigned int *num_maps)
{
	struct rza2_pinctrl_priv *priv = FUNC9(pctldev);
	unsigned int *pins, *psel_val;
	int i, ret, npins, gsel, fsel;
	struct property *of_pins;
	const char **pin_fn;

	/* Find out how many pins to map */
	of_pins = FUNC7(np, "pinmux", NULL);
	if (!of_pins) {
		FUNC3(priv->dev, "Missing pinmux property\n");
		return -ENOENT;
	}
	npins = of_pins->length / sizeof(u32);

	pins = FUNC4(priv->dev, npins, sizeof(*pins), GFP_KERNEL);
	psel_val = FUNC4(priv->dev, npins, sizeof(*psel_val),
				GFP_KERNEL);
	pin_fn = FUNC5(priv->dev, sizeof(*pin_fn), GFP_KERNEL);
	if (!pins || !psel_val || !pin_fn)
		return -ENOMEM;

	/* Collect pin locations and mux settings from DT properties */
	for (i = 0; i < npins; ++i) {
		u32 value;

		ret = FUNC8(np, "pinmux", i, &value);
		if (ret)
			return ret;
		pins[i] = value & MUX_PIN_ID_MASK;
		psel_val[i] = FUNC0(value);
	}

	/* Register a single pin group listing all the pins we read from DT */
	gsel = FUNC10(pctldev, np->name, pins, npins, NULL);
	if (gsel < 0)
		return gsel;

	/*
	 * Register a single group function where the 'data' is an array PSEL
	 * register values read from DT.
	 */
	pin_fn[0] = np->name;
	fsel = FUNC12(pctldev, np->name, pin_fn, 1,
					   psel_val);
	if (fsel < 0) {
		ret = fsel;
		goto remove_group;
	}

	FUNC1(priv->dev, "Parsed %pOF with %d pins\n", np, npins);

	/* Create map where to retrieve function and mux settings from */
	*num_maps = 0;
	*map = FUNC6(sizeof(**map), GFP_KERNEL);
	if (!*map) {
		ret = -ENOMEM;
		goto remove_function;
	}

	(*map)->type = PIN_MAP_TYPE_MUX_GROUP;
	(*map)->data.mux.group = np->name;
	(*map)->data.mux.function = np->name;
	*num_maps = 1;

	return 0;

remove_function:
	FUNC13(pctldev, fsel);

remove_group:
	FUNC11(pctldev, gsel);

	FUNC2(priv->dev, "Unable to parse DT node %s\n", np->name);

	return ret;
}