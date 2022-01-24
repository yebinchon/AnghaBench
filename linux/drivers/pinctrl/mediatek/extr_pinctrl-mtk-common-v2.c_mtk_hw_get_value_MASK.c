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
struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_field {int bitpos; int mask; int /*<<< orphan*/  offset; int /*<<< orphan*/  index; int /*<<< orphan*/  next; } ;
struct mtk_pin_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,struct mtk_pin_field*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pinctrl*,struct mtk_pin_field*,int*) ; 
 int FUNC2 (struct mtk_pinctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
		     int field, int *value)
{
	struct mtk_pin_field pf;
	int err;

	err = FUNC0(hw, desc, field, &pf);
	if (err)
		return err;

	if (!pf.next)
		*value = (FUNC2(hw, pf.index, pf.offset)
			  >> pf.bitpos) & pf.mask;
	else
		FUNC1(hw, &pf, value);

	return 0;
}