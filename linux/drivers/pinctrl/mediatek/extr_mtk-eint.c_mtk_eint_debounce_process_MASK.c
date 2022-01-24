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
struct mtk_eint {scalar_t__ base; TYPE_1__* regs; } ;
struct TYPE_2__ {int dbnc_ctrl; int dbnc_set; } ;

/* Variables and functions */
 int MTK_EINT_DBNC_RST_BIT ; 
 int MTK_EINT_DBNC_SET_EN ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC2(struct mtk_eint *eint, int index)
{
	unsigned int rst, ctrl_offset;
	unsigned int bit, dbnc;

	ctrl_offset = (index / 4) * 4 + eint->regs->dbnc_ctrl;
	dbnc = FUNC0(eint->base + ctrl_offset);
	bit = MTK_EINT_DBNC_SET_EN << ((index % 4) * 8);
	if ((bit & dbnc) > 0) {
		ctrl_offset = (index / 4) * 4 + eint->regs->dbnc_set;
		rst = MTK_EINT_DBNC_RST_BIT << ((index % 4) * 8);
		FUNC1(rst, eint->base + ctrl_offset);
	}
}