#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct npcm7xx_pinctrl {int bank_num; TYPE_6__* gpio_bank; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  ngpio; int /*<<< orphan*/  base; } ;
struct TYPE_8__ {TYPE_1__ gc; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq_chip; int /*<<< orphan*/  pinctrl_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_6__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  npcmgpio_irq_handler ; 

__attribute__((used)) static int FUNC7(struct npcm7xx_pinctrl *pctrl)
{
	int ret, id;

	for (id = 0 ; id < pctrl->bank_num ; id++) {
		ret = FUNC2(pctrl->dev,
					     &pctrl->gpio_bank[id].gc,
					     &pctrl->gpio_bank[id]);
		if (ret) {
			FUNC0(pctrl->dev, "Failed to add GPIO chip %u\n", id);
			goto err_register;
		}

		ret = FUNC3(&pctrl->gpio_bank[id].gc,
					     FUNC1(pctrl->dev),
					     pctrl->gpio_bank[id].pinctrl_id,
					     pctrl->gpio_bank[id].gc.base,
					     pctrl->gpio_bank[id].gc.ngpio);
		if (ret < 0) {
			FUNC0(pctrl->dev, "Failed to add GPIO bank %u\n", id);
			FUNC5(&pctrl->gpio_bank[id].gc);
			goto err_register;
		}

		ret = FUNC4(&pctrl->gpio_bank[id].gc,
					   &pctrl->gpio_bank[id].irq_chip,
					   0, handle_level_irq,
					   IRQ_TYPE_NONE);
		if (ret < 0) {
			FUNC0(pctrl->dev,
				"Failed to add IRQ chip %u\n", id);
			FUNC5(&pctrl->gpio_bank[id].gc);
			goto err_register;
		}

		FUNC6(&pctrl->gpio_bank[id].gc,
					     &pctrl->gpio_bank[id].irq_chip,
					     pctrl->gpio_bank[id].irq,
					     npcmgpio_irq_handler);
	}

	return 0;

err_register:
	for (; id > 0; id--)
		FUNC5(&pctrl->gpio_bank[id - 1].gc);

	return ret;
}