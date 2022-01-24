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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  vgabase; } ;
struct vt8623fb_info {TYPE_1__ state; } ;
struct fb_info {int /*<<< orphan*/  node; struct vt8623fb_info* par; } ;

/* Variables and functions */
 int VGA_MIS_ENB_PLL_LOAD ; 
 int /*<<< orphan*/  VGA_MIS_R ; 
 int /*<<< orphan*/  VGA_MIS_W ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int*,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  vt8623_pll ; 

__attribute__((used)) static void FUNC7(struct fb_info *info, u32 pixclock)
{
	struct vt8623fb_info *par = info->par;
	u16 m, n, r;
	u8 regval;
	int rv;

	rv = FUNC1(&vt8623_pll, 1000000000 / pixclock, &m, &n, &r, info->node);
	if (rv < 0) {
		FUNC0(info, "cannot set requested pixclock, keeping old value\n");
		return;
	}

	/* Set VGA misc register  */
	regval = FUNC4(par->state.vgabase, VGA_MIS_R);
	FUNC5(par->state.vgabase, VGA_MIS_W, regval | VGA_MIS_ENB_PLL_LOAD);

	/* Set clock registers */
	FUNC6(par->state.vgabase, 0x46, (n  | (r << 6)));
	FUNC6(par->state.vgabase, 0x47, m);

	FUNC3(1000);

	/* PLL reset */
	FUNC2(par->state.vgabase, 0x40, 0x02, 0x02);
	FUNC2(par->state.vgabase, 0x40, 0x00, 0x02);
}