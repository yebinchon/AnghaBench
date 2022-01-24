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
struct tdfx_par {int dummy; } ;
struct fb_info {struct tdfx_par* par; } ;
struct banshee_reg {int vgainit1; int vidcfg; int mempll; int gfxpll; int vidpll; int* misc; int* crt; int* ext; int vgainit0; int dacmode; int stride; int curspataddr; int screensize; int startaddr; int miscinit0; int /*<<< orphan*/ * att; int /*<<< orphan*/ * gra; int /*<<< orphan*/ * seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIP0MAX ; 
 int /*<<< orphan*/  CLIP0MIN ; 
 int /*<<< orphan*/  CLIP1MAX ; 
 int /*<<< orphan*/  CLIP1MIN ; 
 int /*<<< orphan*/  COMMANDEXTRA_2D ; 
 int /*<<< orphan*/  DACMODE ; 
 int /*<<< orphan*/  DSTBASE ; 
 int /*<<< orphan*/  HWCURPATADDR ; 
 int /*<<< orphan*/  MISCINIT0 ; 
 int /*<<< orphan*/  MISCINIT1 ; 
 int /*<<< orphan*/  MISC_W ; 
 int /*<<< orphan*/  PLLCTRL0 ; 
 int /*<<< orphan*/  PLLCTRL1 ; 
 int /*<<< orphan*/  PLLCTRL2 ; 
 int /*<<< orphan*/  SRCBASE ; 
 int /*<<< orphan*/  SRCXY ; 
 int /*<<< orphan*/  VGAINIT0 ; 
 int /*<<< orphan*/  VGAINIT1 ; 
 int /*<<< orphan*/  VIDDESKSTART ; 
 int /*<<< orphan*/  VIDDESKSTRIDE ; 
 int /*<<< orphan*/  VIDPROCCFG ; 
 int /*<<< orphan*/  VIDSCREENSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct tdfx_par*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tdfx_par*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int FUNC3 (struct tdfx_par*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tdfx_par*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tdfx_par*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tdfx_par*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct tdfx_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tdfx_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tdfx_par*) ; 
 int /*<<< orphan*/  FUNC10 (struct tdfx_par*) ; 
 int /*<<< orphan*/  FUNC11 (struct tdfx_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct fb_info *info, struct banshee_reg *reg)
{
	struct tdfx_par *par = info->par;
	int i;

	FUNC2(info);

	FUNC8(par, MISCINIT1, FUNC7(par, MISCINIT1) | 0x01);

	FUNC4(par, 0x11, FUNC3(par, 0x11) & 0x7f); /* CRT unprotect */

	FUNC1(par, 3);
	FUNC8(par, VGAINIT1, reg->vgainit1 & 0x001FFFFF);
	FUNC8(par, VIDPROCCFG, reg->vidcfg & ~0x00000001);
#if 0
	tdfx_outl(par, PLLCTRL1, reg->mempll);
	tdfx_outl(par, PLLCTRL2, reg->gfxpll);
#endif
	FUNC8(par, PLLCTRL0, reg->vidpll);

	FUNC11(par, MISC_W, reg->misc[0x00] | 0x01);

	for (i = 0; i < 5; i++)
		FUNC6(par, i, reg->seq[i]);

	for (i = 0; i < 25; i++)
		FUNC4(par, i, reg->crt[i]);

	for (i = 0; i < 9; i++)
		FUNC5(par, i, reg->gra[i]);

	for (i = 0; i < 21; i++)
		FUNC0(par, i, reg->att[i]);

	FUNC4(par, 0x1a, reg->ext[0]);
	FUNC4(par, 0x1b, reg->ext[1]);

	FUNC9(par);
	FUNC10(par);

	FUNC1(par, 9);
	FUNC8(par, VGAINIT0, reg->vgainit0);
	FUNC8(par, DACMODE, reg->dacmode);
	FUNC8(par, VIDDESKSTRIDE, reg->stride);
	FUNC8(par, HWCURPATADDR, reg->curspataddr);

	FUNC8(par, VIDSCREENSIZE, reg->screensize);
	FUNC8(par, VIDDESKSTART, reg->startaddr);
	FUNC8(par, VIDPROCCFG, reg->vidcfg);
	FUNC8(par, VGAINIT1, reg->vgainit1);
	FUNC8(par, MISCINIT0, reg->miscinit0);

	FUNC1(par, 8);
	FUNC8(par, SRCBASE, reg->startaddr);
	FUNC8(par, DSTBASE, reg->startaddr);
	FUNC8(par, COMMANDEXTRA_2D, 0);
	FUNC8(par, CLIP0MIN, 0);
	FUNC8(par, CLIP0MAX, 0x0fff0fff);
	FUNC8(par, CLIP1MIN, 0);
	FUNC8(par, CLIP1MAX, 0x0fff0fff);
	FUNC8(par, SRCXY, 0);

	FUNC2(info);
}