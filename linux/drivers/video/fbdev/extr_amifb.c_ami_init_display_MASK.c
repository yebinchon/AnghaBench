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
typedef  int /*<<< orphan*/  u_short ;
struct amifb_par {int bplcon0; int beamcon0; int /*<<< orphan*/  htotal; int /*<<< orphan*/  fmode; scalar_t__ hsstop; int /*<<< orphan*/  vsstop; int /*<<< orphan*/  vsstrt; int /*<<< orphan*/  vbstop; int /*<<< orphan*/  vbstrt; int /*<<< orphan*/  vtotal; int /*<<< orphan*/  hcenter; int /*<<< orphan*/  hsstrt; int /*<<< orphan*/  hbstop; int /*<<< orphan*/  hbstrt; int /*<<< orphan*/  bplcon3; } ;
struct TYPE_4__ {int /*<<< orphan*/ ** list; } ;
struct TYPE_3__ {int bplcon0; int bplcon2; int bplcon4; int beamcon0; int vposr; int vposw; int /*<<< orphan*/ * cop2lc; int /*<<< orphan*/  fmode; int /*<<< orphan*/  vsstop; int /*<<< orphan*/  vsstrt; int /*<<< orphan*/  vbstop; int /*<<< orphan*/  vbstrt; int /*<<< orphan*/  vtotal; int /*<<< orphan*/  hcenter; int /*<<< orphan*/  hsstop; int /*<<< orphan*/  hsstrt; int /*<<< orphan*/  hbstop; int /*<<< orphan*/  hbstrt; int /*<<< orphan*/  htotal; int /*<<< orphan*/  bplcon3; } ;

/* Variables and functions */
 int BMC0_VARBEAMEN ; 
 int BPC0_LACE ; 
 int BPC2_KILLEHB ; 
 int BPC2_PF1P2 ; 
 int BPC2_PF2P2 ; 
 int BPC4_ESPRM4 ; 
 int BPC4_OSPRM4 ; 
 scalar_t__ IS_AGA ; 
 scalar_t__ IS_OCS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amiga_audio_min_period ; 
 TYPE_2__ copdisplay ; 
 size_t currentcop ; 
 TYPE_1__ custom ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int is_lace ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(const struct amifb_par *par)
{
	int i;

	custom.bplcon0 = par->bplcon0 & ~BPC0_LACE;
	custom.bplcon2 = (IS_OCS ? 0 : BPC2_KILLEHB) | BPC2_PF2P2 | BPC2_PF1P2;
	if (!IS_OCS) {
		custom.bplcon3 = par->bplcon3;
		if (IS_AGA)
			custom.bplcon4 = BPC4_ESPRM4 | BPC4_OSPRM4;
		if (par->beamcon0 & BMC0_VARBEAMEN) {
			custom.htotal = FUNC7(par->htotal);
			custom.hbstrt = FUNC3(par->hbstrt);
			custom.hbstop = FUNC2(par->hbstop);
			custom.hsstrt = FUNC6(par->hsstrt);
			custom.hsstop = FUNC5(par->hsstop);
			custom.hcenter = FUNC4(par->hcenter);
			custom.vtotal = FUNC12(par->vtotal);
			custom.vbstrt = FUNC9(par->vbstrt);
			custom.vbstop = FUNC8(par->vbstop);
			custom.vsstrt = FUNC11(par->vsstrt);
			custom.vsstop = FUNC10(par->vsstop);
		}
	}
	if (!IS_OCS || par->hsstop)
		custom.beamcon0 = par->beamcon0;
	if (IS_AGA)
		custom.fmode = par->fmode;

	/*
	 * The minimum period for audio depends on htotal
	 */

	amiga_audio_min_period = FUNC1(par->htotal);

	is_lace = par->bplcon0 & BPC0_LACE ? 1 : 0;
#if 1
	if (is_lace) {
		i = custom.vposr >> 15;
	} else {
		custom.vposw = custom.vposr | 0x8000;
		i = 1;
	}
#else
	i = 1;
	custom.vposw = custom.vposr | 0x8000;
#endif
	custom.cop2lc = (u_short *)FUNC0(copdisplay.list[currentcop][i]);
}