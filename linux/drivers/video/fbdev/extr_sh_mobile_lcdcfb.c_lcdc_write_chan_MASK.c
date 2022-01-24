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
struct sh_mobile_lcdc_chan {scalar_t__* reg_offs; TYPE_1__* lcdc; } ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SIDE_B_OFFSET ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct sh_mobile_lcdc_chan *chan,
			    int reg_nr, unsigned long data)
{
	FUNC1(data, chan->lcdc->base + chan->reg_offs[reg_nr]);
	if (FUNC0(reg_nr))
		FUNC1(data, chan->lcdc->base + chan->reg_offs[reg_nr] +
			  SIDE_B_OFFSET);
}