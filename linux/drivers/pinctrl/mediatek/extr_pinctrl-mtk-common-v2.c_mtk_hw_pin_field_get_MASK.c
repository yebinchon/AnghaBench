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
struct mtk_pinctrl {int /*<<< orphan*/  dev; } ;
struct mtk_pin_field {int dummy; } ;
struct mtk_pin_desc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PINCTRL_PIN_REG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,struct mtk_pin_field*) ; 

__attribute__((used)) static int FUNC2(struct mtk_pinctrl *hw,
				const struct mtk_pin_desc *desc,
				int field, struct mtk_pin_field *pfd)
{
	if (field < 0 || field >= PINCTRL_PIN_REG_MAX) {
		FUNC0(hw->dev, "Invalid Field %d\n", field);
		return -EINVAL;
	}

	return FUNC1(hw, desc, field, pfd);
}