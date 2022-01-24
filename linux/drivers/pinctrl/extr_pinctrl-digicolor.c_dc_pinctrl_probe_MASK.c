#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pinctrl_pin_desc {int number; char* name; } ;
struct pinctrl_desc {struct pinctrl_pin_desc* pins; int /*<<< orphan*/  npins; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct dc_pinmap {char** pin_names; int /*<<< orphan*/  pctl; TYPE_1__* dev; struct pinctrl_desc* desc; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PINS_COUNT ; 
 int PINS_PER_COLLECTION ; 
 int PIN_COLLECTIONS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (struct dc_pinmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dc_pinctrl_ops ; 
 int /*<<< orphan*/  dc_pmxops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct resource*) ; 
 void* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct pinctrl_desc*,struct dc_pinmap*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char,int) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct dc_pinmap *pmap;
	struct resource *r;
	struct pinctrl_pin_desc *pins;
	struct pinctrl_desc *pctl_desc;
	char *pin_names;
	int name_len = FUNC10("GP_xx") + 1;
	int i, j;

	pmap = FUNC6(&pdev->dev, sizeof(*pmap), GFP_KERNEL);
	if (!pmap)
		return -ENOMEM;

	r = FUNC8(pdev, IORESOURCE_MEM, 0);
	pmap->regs = FUNC4(&pdev->dev, r);
	if (FUNC0(pmap->regs))
		return FUNC1(pmap->regs);

	pins = FUNC5(&pdev->dev, PINS_COUNT, sizeof(*pins),
			    GFP_KERNEL);
	if (!pins)
		return -ENOMEM;
	pin_names = FUNC5(&pdev->dev, PINS_COUNT, name_len,
				 GFP_KERNEL);
	if (!pin_names)
		return -ENOMEM;

	for (i = 0; i < PIN_COLLECTIONS; i++) {
		for (j = 0; j < PINS_PER_COLLECTION; j++) {
			int pin_id = i*PINS_PER_COLLECTION + j;
			char *name = &pin_names[pin_id * name_len];

			FUNC9(name, name_len, "GP_%c%c", 'A'+i, '0'+j);

			pins[pin_id].number = pin_id;
			pins[pin_id].name = name;
			pmap->pin_names[pin_id] = name;
		}
	}

	pctl_desc = FUNC6(&pdev->dev, sizeof(*pctl_desc), GFP_KERNEL);
	if (!pctl_desc)
		return -ENOMEM;

	pctl_desc->name	= DRIVER_NAME,
	pctl_desc->owner = THIS_MODULE,
	pctl_desc->pctlops = &dc_pinctrl_ops,
	pctl_desc->pmxops = &dc_pmxops,
	pctl_desc->npins = PINS_COUNT;
	pctl_desc->pins = pins;
	pmap->desc = pctl_desc;

	pmap->dev = &pdev->dev;

	pmap->pctl = FUNC7(&pdev->dev, pctl_desc, pmap);
	if (FUNC0(pmap->pctl)) {
		FUNC3(&pdev->dev, "pinctrl driver registration failed\n");
		return FUNC1(pmap->pctl);
	}

	return FUNC2(pmap, pdev->dev.of_node);
}