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
struct TYPE_2__ {int SiS_MyCR63; } ;
struct sis_video_info {int modechanged; int vbflags2; scalar_t__ sisvga_engine; int currentvbflags; int chronteltype; int tvx; int tvy; scalar_t__ engineok; scalar_t__ accel; scalar_t__ tvypos; scalar_t__ tvxpos; TYPE_1__ SiS_Pr; void* p2_02; void* p2_01; void* p2_43; void* p2_42; void* p2_2b; void* p2_20; void* p2_1f; scalar_t__ sisfb_crt1off; } ;

/* Variables and functions */
 int CRT2_TV ; 
 int /*<<< orphan*/  IND_SIS_RAMDAC_CONTROL ; 
 int /*<<< orphan*/  SISCR ; 
 int /*<<< orphan*/  SISPART2 ; 
 int /*<<< orphan*/  SISSR ; 
 scalar_t__ SIS_300_VGA ; 
 scalar_t__ SIS_315_VGA ; 
 int FUNC0 (TYPE_1__*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int VB2_CHRONTEL ; 
 int VB2_SISBRIDGE ; 
 int VB2_VIDEOBRIDGE ; 
 int VB_DISPTYPE_CRT1 ; 
 int VB_DISPTYPE_CRT2 ; 
 int VB_MIRROR_MODE ; 
 int VB_SINGLE_MODE ; 
 scalar_t__ FUNC5 (struct sis_video_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sis_video_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct sis_video_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct sis_video_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct sis_video_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sis_video_info*,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(struct sis_video_info *ivideo)
{
	bool crt1isoff = false;
	bool doit = true;
#if defined(CONFIG_FB_SIS_300) || defined(CONFIG_FB_SIS_315)
	u8 reg;
#endif
#ifdef CONFIG_FB_SIS_315
	u8 reg1;
#endif

	FUNC2(SISSR, 0x05, 0x86);

#ifdef CONFIG_FB_SIS_315
	sisfb_fixup_SR11(ivideo);
#endif

	/* Now we actually HAVE changed the display mode */
	ivideo->modechanged = 1;

	/* We can't switch off CRT1 if bridge is in slave mode */
	if(ivideo->vbflags2 & VB2_VIDEOBRIDGE) {
		if(FUNC5(ivideo)) doit = false;
	} else
		ivideo->sisfb_crt1off = 0;

#ifdef CONFIG_FB_SIS_300
	if(ivideo->sisvga_engine == SIS_300_VGA) {
		if((ivideo->sisfb_crt1off) && (doit)) {
			crt1isoff = true;
			reg = 0x00;
		} else {
			crt1isoff = false;
			reg = 0x80;
		}
		SiS_SetRegANDOR(SISCR, 0x17, 0x7f, reg);
	}
#endif
#ifdef CONFIG_FB_SIS_315
	if(ivideo->sisvga_engine == SIS_315_VGA) {
		if((ivideo->sisfb_crt1off) && (doit)) {
			crt1isoff = true;
			reg  = 0x40;
			reg1 = 0xc0;
		} else {
			crt1isoff = false;
			reg  = 0x00;
			reg1 = 0x00;
		}
		SiS_SetRegANDOR(SISCR, ivideo->SiS_Pr.SiS_MyCR63, ~0x40, reg);
		SiS_SetRegANDOR(SISSR, 0x1f, 0x3f, reg1);
	}
#endif

	if(crt1isoff) {
		ivideo->currentvbflags &= ~VB_DISPTYPE_CRT1;
		ivideo->currentvbflags |= VB_SINGLE_MODE;
	} else {
		ivideo->currentvbflags |= VB_DISPTYPE_CRT1;
		if(ivideo->currentvbflags & VB_DISPTYPE_CRT2) {
			ivideo->currentvbflags |= VB_MIRROR_MODE;
		} else {
			ivideo->currentvbflags |= VB_SINGLE_MODE;
		}
	}

	FUNC3(SISSR, IND_SIS_RAMDAC_CONTROL, ~0x04);

	if(ivideo->currentvbflags & CRT2_TV) {
		if(ivideo->vbflags2 & VB2_SISBRIDGE) {
			ivideo->p2_1f = FUNC1(SISPART2, 0x1f);
			ivideo->p2_20 = FUNC1(SISPART2, 0x20);
			ivideo->p2_2b = FUNC1(SISPART2, 0x2b);
			ivideo->p2_42 = FUNC1(SISPART2, 0x42);
			ivideo->p2_43 = FUNC1(SISPART2, 0x43);
			ivideo->p2_01 = FUNC1(SISPART2, 0x01);
			ivideo->p2_02 = FUNC1(SISPART2, 0x02);
		} else if(ivideo->vbflags2 & VB2_CHRONTEL) {
			if(ivideo->chronteltype == 1) {
				ivideo->tvx = FUNC0(&ivideo->SiS_Pr, 0x0a);
				ivideo->tvx |= (((FUNC0(&ivideo->SiS_Pr, 0x08) & 0x02) >> 1) << 8);
				ivideo->tvy = FUNC0(&ivideo->SiS_Pr, 0x0b);
				ivideo->tvy |= ((FUNC0(&ivideo->SiS_Pr, 0x08) & 0x01) << 8);
			}
		}
	}

	if(ivideo->tvxpos) {
		FUNC9(ivideo, ivideo->tvxpos);
	}
	if(ivideo->tvypos) {
		FUNC10(ivideo, ivideo->tvypos);
	}

	/* Eventually sync engines */
	FUNC6(ivideo);

	/* (Re-)Initialize chip engines */
	if(ivideo->accel) {
		FUNC7(ivideo);
	} else {
		ivideo->engineok = 0;
	}
}