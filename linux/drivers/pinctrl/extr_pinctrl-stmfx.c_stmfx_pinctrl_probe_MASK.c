#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  name; int /*<<< orphan*/  irq_bus_sync_unlock; int /*<<< orphan*/  irq_bus_lock; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; } ;
struct TYPE_13__ {char* label; int base; int can_sleep; struct device_node* of_node; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  set_config; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; TYPE_5__* parent; } ;
struct TYPE_16__ {char* name; int link_consumers; int /*<<< orphan*/  npins; int /*<<< orphan*/  owner; int /*<<< orphan*/  pins; int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pctlops; } ;
struct stmfx_pinctrl {int /*<<< orphan*/  gpio_valid_mask; TYPE_5__* dev; TYPE_2__ irq_chip; TYPE_1__ gpio_chip; TYPE_7__ pctl_desc; int /*<<< orphan*/  pctl_dev; int /*<<< orphan*/  lock; struct stmfx* stmfx; } ;
struct stmfx {int /*<<< orphan*/  dev; } ;
struct TYPE_15__ {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,...) ; 
 struct stmfx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_5__*,TYPE_1__*,struct stmfx_pinctrl*) ; 
 struct stmfx_pinctrl* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_5__*,TYPE_7__*,struct stmfx_pinctrl*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_5__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stmfx_pinctrl*) ; 
 int /*<<< orphan*/  gpiochip_generic_config ; 
 int FUNC9 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  handle_bad_irq ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct stmfx_pinctrl*) ; 
 int /*<<< orphan*/  stmfx_gpio_direction_input ; 
 int /*<<< orphan*/  stmfx_gpio_direction_output ; 
 int /*<<< orphan*/  stmfx_gpio_get ; 
 int /*<<< orphan*/  stmfx_gpio_get_direction ; 
 int /*<<< orphan*/  stmfx_gpio_set ; 
 int /*<<< orphan*/  stmfx_pinconf_ops ; 
 int FUNC17 (struct stmfx_pinctrl*) ; 
 int /*<<< orphan*/  stmfx_pinctrl_irq_bus_lock ; 
 int /*<<< orphan*/  stmfx_pinctrl_irq_bus_sync_unlock ; 
 int /*<<< orphan*/  stmfx_pinctrl_irq_mask ; 
 int /*<<< orphan*/  stmfx_pinctrl_irq_set_type ; 
 int /*<<< orphan*/  stmfx_pinctrl_irq_thread_fn ; 
 int /*<<< orphan*/  stmfx_pinctrl_irq_unmask ; 
 int /*<<< orphan*/  stmfx_pinctrl_ops ; 
 int /*<<< orphan*/  stmfx_pins ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct stmfx *stmfx = FUNC2(pdev->dev.parent);
	struct device_node *np = pdev->dev.of_node;
	struct stmfx_pinctrl *pctl;
	int irq, ret;

	pctl = FUNC6(stmfx->dev, sizeof(*pctl), GFP_KERNEL);
	if (!pctl)
		return -ENOMEM;

	FUNC16(pdev, pctl);

	pctl->dev = &pdev->dev;
	pctl->stmfx = stmfx;

	if (!FUNC13(np, "gpio-ranges", NULL)) {
		FUNC1(pctl->dev, "missing required gpio-ranges property\n");
		return -EINVAL;
	}

	irq = FUNC15(pdev, 0);
	if (irq <= 0)
		return -ENXIO;

	FUNC12(&pctl->lock);

	/* Register pin controller */
	pctl->pctl_desc.name = "stmfx-pinctrl";
	pctl->pctl_desc.pctlops = &stmfx_pinctrl_ops;
	pctl->pctl_desc.confops = &stmfx_pinconf_ops;
	pctl->pctl_desc.pins = stmfx_pins;
	pctl->pctl_desc.npins = FUNC0(stmfx_pins);
	pctl->pctl_desc.owner = THIS_MODULE;
	pctl->pctl_desc.link_consumers = true;

	ret = FUNC7(pctl->dev, &pctl->pctl_desc,
					     pctl, &pctl->pctl_dev);
	if (ret) {
		FUNC1(pctl->dev, "pinctrl registration failed\n");
		return ret;
	}

	ret = FUNC14(pctl->pctl_dev);
	if (ret) {
		FUNC1(pctl->dev, "pinctrl enable failed\n");
		return ret;
	}

	/* Register gpio controller */
	pctl->gpio_chip.label = "stmfx-gpio";
	pctl->gpio_chip.parent = pctl->dev;
	pctl->gpio_chip.get_direction = stmfx_gpio_get_direction;
	pctl->gpio_chip.direction_input = stmfx_gpio_direction_input;
	pctl->gpio_chip.direction_output = stmfx_gpio_direction_output;
	pctl->gpio_chip.get = stmfx_gpio_get;
	pctl->gpio_chip.set = stmfx_gpio_set;
	pctl->gpio_chip.set_config = gpiochip_generic_config;
	pctl->gpio_chip.base = -1;
	pctl->gpio_chip.ngpio = pctl->pctl_desc.npins;
	pctl->gpio_chip.can_sleep = true;
	pctl->gpio_chip.of_node = np;

	ret = FUNC5(pctl->dev, &pctl->gpio_chip, pctl);
	if (ret) {
		FUNC1(pctl->dev, "gpio_chip registration failed\n");
		return ret;
	}

	ret = FUNC17(pctl);
	if (ret)
		return ret;

	pctl->irq_chip.name = FUNC4(pctl->dev);
	pctl->irq_chip.irq_mask = stmfx_pinctrl_irq_mask;
	pctl->irq_chip.irq_unmask = stmfx_pinctrl_irq_unmask;
	pctl->irq_chip.irq_set_type = stmfx_pinctrl_irq_set_type;
	pctl->irq_chip.irq_bus_lock = stmfx_pinctrl_irq_bus_lock;
	pctl->irq_chip.irq_bus_sync_unlock = stmfx_pinctrl_irq_bus_sync_unlock;

	ret = FUNC9(&pctl->gpio_chip, &pctl->irq_chip,
					  0, handle_bad_irq, IRQ_TYPE_NONE);
	if (ret) {
		FUNC1(pctl->dev, "cannot add irqchip to gpiochip\n");
		return ret;
	}

	ret = FUNC8(pctl->dev, irq, NULL,
					stmfx_pinctrl_irq_thread_fn,
					IRQF_ONESHOT,
					pctl->irq_chip.name, pctl);
	if (ret) {
		FUNC1(pctl->dev, "cannot request irq%d\n", irq);
		return ret;
	}

	FUNC10(&pctl->gpio_chip, &pctl->irq_chip, irq);

	FUNC3(pctl->dev,
		 "%ld GPIOs available\n", FUNC11(pctl->gpio_valid_mask));

	return 0;
}