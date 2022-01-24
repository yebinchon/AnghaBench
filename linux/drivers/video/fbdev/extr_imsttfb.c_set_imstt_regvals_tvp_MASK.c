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
typedef  int u_int ;
struct imstt_regvals {int pclk_m; int pclk_n; int pclk_p; void** lckl_p; void** mlc; } ;
struct imstt_par {int* cmap_regs; struct imstt_regvals init; } ;
typedef  void* __u8 ;

/* Variables and functions */
 size_t TVPADDRW ; 
 size_t TVPIDATA ; 
 void* TVPIRLPD ; 
 int TVPIRMIC ; 
 int TVPIRMLC ; 
 int TVPIRMXC ; 
 void* TVPIRPLA ; 
 void* TVPIRPPD ; 
 int TVPIRTCC ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void
FUNC1 (struct imstt_par *par, u_int bpp)
{
	struct imstt_regvals *init = &par->init;
	__u8 tcc, mxc, lckl_n, mic;
	__u8 mlc, lckl_p;

	switch (bpp) {
		default:
		case 8:
			tcc = 0x80;
			mxc = 0x4d;
			lckl_n = 0xc1;
			mlc = init->mlc[0];
			lckl_p = init->lckl_p[0];
			break;
		case 16:
			tcc = 0x44;
			mxc = 0x55;
			lckl_n = 0xe1;
			mlc = init->mlc[1];
			lckl_p = init->lckl_p[1];
			break;
		case 24:
			tcc = 0x5e;
			mxc = 0x5d;
			lckl_n = 0xf1;
			mlc = init->mlc[2];
			lckl_p = init->lckl_p[2];
			break;
		case 32:
			tcc = 0x46;
			mxc = 0x5d;
			lckl_n = 0xf1;
			mlc = init->mlc[2];
			lckl_p = init->lckl_p[2];
			break;
	}
	mic = 0x08;

	par->cmap_regs[TVPADDRW] = TVPIRPLA;		FUNC0();
	par->cmap_regs[TVPIDATA] = 0x00;		FUNC0();
	par->cmap_regs[TVPADDRW] = TVPIRPPD;		FUNC0();
	par->cmap_regs[TVPIDATA] = init->pclk_m;	FUNC0();
	par->cmap_regs[TVPADDRW] = TVPIRPPD;		FUNC0();
	par->cmap_regs[TVPIDATA] = init->pclk_n;	FUNC0();
	par->cmap_regs[TVPADDRW] = TVPIRPPD;		FUNC0();
	par->cmap_regs[TVPIDATA] = init->pclk_p;	FUNC0();

	par->cmap_regs[TVPADDRW] = TVPIRTCC;		FUNC0();
	par->cmap_regs[TVPIDATA] = tcc;			FUNC0();
	par->cmap_regs[TVPADDRW] = TVPIRMXC;		FUNC0();
	par->cmap_regs[TVPIDATA] = mxc;			FUNC0();
	par->cmap_regs[TVPADDRW] = TVPIRMIC;		FUNC0();
	par->cmap_regs[TVPIDATA] = mic;			FUNC0();

	par->cmap_regs[TVPADDRW] = TVPIRPLA;		FUNC0();
	par->cmap_regs[TVPIDATA] = 0x00;		FUNC0();
	par->cmap_regs[TVPADDRW] = TVPIRLPD;		FUNC0();
	par->cmap_regs[TVPIDATA] = lckl_n;		FUNC0();

	par->cmap_regs[TVPADDRW] = TVPIRPLA;		FUNC0();
	par->cmap_regs[TVPIDATA] = 0x15;		FUNC0();
	par->cmap_regs[TVPADDRW] = TVPIRMLC;		FUNC0();
	par->cmap_regs[TVPIDATA] = mlc;			FUNC0();

	par->cmap_regs[TVPADDRW] = TVPIRPLA;		FUNC0();
	par->cmap_regs[TVPIDATA] = 0x2a;		FUNC0();
	par->cmap_regs[TVPADDRW] = TVPIRLPD;		FUNC0();
	par->cmap_regs[TVPIDATA] = lckl_p;		FUNC0();
}