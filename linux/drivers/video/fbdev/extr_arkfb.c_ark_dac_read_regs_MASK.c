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
typedef  int u8 ;
struct fb_info {struct arkfb_info* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  vgabase; } ;
struct arkfb_info {TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/ * dac_regs ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(void *data, u8 *code, int count)
{
	struct fb_info *info = data;
	struct arkfb_info *par;
	u8 regval;

	par = info->par;
	regval = FUNC1(par->state.vgabase, 0x1C);
	while (count != 0)
	{
		FUNC2(par->state.vgabase, 0x1C, regval | (code[0] & 4 ? 0x80 : 0));
		code[1] = FUNC0(par->state.vgabase, dac_regs[code[0] & 3]);
		count--;
		code += 2;
	}

	FUNC2(par->state.vgabase, 0x1C, regval);
}