#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct mtk_pin_drv_grp {scalar_t__ grp; unsigned int bit; int /*<<< orphan*/  offset; } ;
struct mtk_drv_group_desc {unsigned char min_drv; unsigned char max_drv; unsigned char step; int high_bit; unsigned int low_bit; } ;
struct TYPE_2__ {unsigned int npins; scalar_t__ n_grp_cls; struct mtk_drv_group_desc* grp_desc; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 struct mtk_pin_drv_grp* FUNC1 (struct mtk_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_pinctrl*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct mtk_pinctrl *pctl,
		unsigned int pin, unsigned char driving)
{
	const struct mtk_pin_drv_grp *pin_drv;
	unsigned int val;
	unsigned int bits, mask, shift;
	const struct mtk_drv_group_desc *drv_grp;

	if (pin >= pctl->devdata->npins)
		return -EINVAL;

	pin_drv = FUNC1(pctl, pin);
	if (!pin_drv || pin_drv->grp > pctl->devdata->n_grp_cls)
		return -EINVAL;

	drv_grp = pctl->devdata->grp_desc + pin_drv->grp;
	if (driving >= drv_grp->min_drv && driving <= drv_grp->max_drv
		&& !(driving % drv_grp->step)) {
		val = driving / drv_grp->step - 1;
		bits = drv_grp->high_bit - drv_grp->low_bit + 1;
		mask = FUNC0(bits) - 1;
		shift = pin_drv->bit + drv_grp->low_bit;
		mask <<= shift;
		val <<= shift;
		return FUNC3(FUNC2(pctl, pin),
				pin_drv->offset, mask, val);
	}

	return -EINVAL;
}