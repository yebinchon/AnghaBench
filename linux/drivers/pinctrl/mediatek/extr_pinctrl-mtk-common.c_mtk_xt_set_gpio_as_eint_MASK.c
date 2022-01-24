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
struct mtk_pinctrl {int /*<<< orphan*/  pctl_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;
struct TYPE_4__ {int /*<<< orphan*/  eintmux; } ;
struct mtk_desc_pin {TYPE_1__ pin; TYPE_2__ eint; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PIN_CONFIG_INPUT_ENABLE ; 
 struct mtk_desc_pin* FUNC0 (struct mtk_pinctrl*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pinctrl*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *data, unsigned long eint_n)
{
	struct mtk_pinctrl *pctl = (struct mtk_pinctrl *)data;
	const struct mtk_desc_pin *pin;

	pin = FUNC0(pctl, eint_n);
	if (!pin)
		return -EINVAL;

	/* set mux to INT mode */
	FUNC3(pctl->pctl_dev, pin->pin.number, pin->eint.eintmux);
	/* set gpio direction to input */
	FUNC2(pctl->pctl_dev, NULL, pin->pin.number,
				   true);
	/* set input-enable */
	FUNC1(pctl, pin->pin.number, 1,
			      PIN_CONFIG_INPUT_ENABLE);

	return 0;
}