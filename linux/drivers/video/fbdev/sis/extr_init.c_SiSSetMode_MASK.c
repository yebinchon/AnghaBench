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
struct SiS_Private {int UseCustomMode; int CRT1UsesCustomMode; int SiS_flag_clearbuffer; int SiS_VGAINFO; int SiS_VBType; scalar_t__ ChipType; int SiS_VBInfo; int SiS_IF_DEF_LVDS; scalar_t__ SiS_IF_DEF_CH70xx; scalar_t__ SiS_IF_DEF_TRUMPION; int /*<<< orphan*/  SiS_P3c4; int /*<<< orphan*/  SiS_P3d4; int /*<<< orphan*/  SiS_ROMNew; int /*<<< orphan*/  SiS_Part1Port; int /*<<< orphan*/  SiS_P3c6; int /*<<< orphan*/  CModeFlag; int /*<<< orphan*/  CModeFlag_CRT1; int /*<<< orphan*/  CSRClock; int /*<<< orphan*/  CSRClock_CRT1; int /*<<< orphan*/  SiS_Part2Port; int /*<<< orphan*/  IOAddress; } ;
typedef  int /*<<< orphan*/  SISIOADDRESS ;

/* Variables and functions */
 scalar_t__ IS_SIS650 ; 
 scalar_t__ SIS_315H ; 
 scalar_t__ SIS_630 ; 
 scalar_t__ SIS_730 ; 
 int SetCRT2ToLCD ; 
 int SetCRT2ToLCDA ; 
 int SetSimuScanMode ; 
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC1 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC3 (struct SiS_Private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC5 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC7 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC8 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC11 (struct SiS_Private*,unsigned short,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC12 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC13 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC14 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC15 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC16 (struct SiS_Private*) ; 
 scalar_t__ FUNC17 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC18 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC19 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC20 (struct SiS_Private*,unsigned short*,unsigned short*) ; 
 int /*<<< orphan*/  FUNC21 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC22 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC23 (struct SiS_Private*,unsigned short) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC28 (struct SiS_Private*,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC29 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC30 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC31 (struct SiS_Private*) ; 
 int SwitchCRT2 ; 
 int VB_SIS30xBLV ; 
 int VB_SISVB ; 

bool
FUNC32(struct SiS_Private *SiS_Pr, unsigned short ModeNo)
{
   SISIOADDRESS BaseAddr = SiS_Pr->IOAddress;
   unsigned short RealModeNo, ModeIdIndex;
   unsigned char  backupreg = 0;
   unsigned short KeepLockReg;

   SiS_Pr->UseCustomMode = false;
   SiS_Pr->CRT1UsesCustomMode = false;

   SiS_Pr->SiS_flag_clearbuffer = 0;

   if(SiS_Pr->UseCustomMode) {
      ModeNo = 0xfe;
   } else {
      if(!(ModeNo & 0x80)) SiS_Pr->SiS_flag_clearbuffer = 1;
      ModeNo &= 0x7f;
   }

   /* Don't use FSTN mode for CRT1 */
   RealModeNo = ModeNo;
   if(ModeNo == 0x5b) ModeNo = 0x56;

   FUNC2(SiS_Pr);
   FUNC3(SiS_Pr, BaseAddr);
   FUNC10(SiS_Pr);

   SiS_Pr->SiS_VGAINFO = 0x11;

   KeepLockReg = FUNC9(SiS_Pr->SiS_P3c4,0x05);
   FUNC24(SiS_Pr->SiS_P3c4,0x05,0x86);

   FUNC1(SiS_Pr);
   FUNC4(SiS_Pr);
   FUNC0(SiS_Pr);

   FUNC31(SiS_Pr);

   if(!SiS_Pr->UseCustomMode) {
      if(!(FUNC20(SiS_Pr, &ModeNo, &ModeIdIndex))) return false;
   } else {
      ModeIdIndex = 0;
   }

   FUNC12(SiS_Pr);

   /* Init/restore some VB registers */
   FUNC15(SiS_Pr);
   if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
      if(SiS_Pr->ChipType >= SIS_315H) {
         FUNC19(SiS_Pr);
	 FUNC27(SiS_Pr->SiS_P3c4,0x32,0x10);
	 FUNC27(SiS_Pr->SiS_Part2Port,0x00,0x0c);
         backupreg = FUNC9(SiS_Pr->SiS_P3d4,0x38);
      } else {
         backupreg = FUNC9(SiS_Pr->SiS_P3d4,0x35);
      }
   }

   /* Get VB information (connectors, connected devices) */
   FUNC11(SiS_Pr, ModeNo, ModeIdIndex, (SiS_Pr->UseCustomMode) ? 0 : 1);
   FUNC29(SiS_Pr);
   FUNC28(SiS_Pr, ModeNo, ModeIdIndex);
   FUNC8(SiS_Pr, ModeNo, ModeIdIndex);
   FUNC23(SiS_Pr, ModeNo);

   /* Check memory size (kernel framebuffer driver only) */
   if(!FUNC5(SiS_Pr, ModeNo, ModeIdIndex)) {
      return false;
   }

   FUNC18(SiS_Pr);

   if(SiS_Pr->UseCustomMode) {
      SiS_Pr->CRT1UsesCustomMode = true;
      SiS_Pr->CSRClock_CRT1 = SiS_Pr->CSRClock;
      SiS_Pr->CModeFlag_CRT1 = SiS_Pr->CModeFlag;
   } else {
      SiS_Pr->CRT1UsesCustomMode = false;
   }

   /* Set mode on CRT1 */
   if( (SiS_Pr->SiS_VBInfo & (SetSimuScanMode | SetCRT2ToLCDA)) ||
       (!(SiS_Pr->SiS_VBInfo & SwitchCRT2)) ) {
      FUNC21(SiS_Pr, ModeNo, ModeIdIndex);
   }

   /* Set mode on CRT2 */
   if(SiS_Pr->SiS_VBInfo & (SetSimuScanMode | SwitchCRT2 | SetCRT2ToLCDA)) {
      if( (SiS_Pr->SiS_VBType & VB_SISVB)    ||
	  (SiS_Pr->SiS_IF_DEF_LVDS     == 1) ||
	  (SiS_Pr->SiS_IF_DEF_CH70xx   != 0) ||
	  (SiS_Pr->SiS_IF_DEF_TRUMPION != 0) ) {
	 FUNC22(SiS_Pr, RealModeNo);
      }
   }

   FUNC14(SiS_Pr);

   FUNC30(SiS_Pr);

   FUNC7(SiS_Pr);
   FUNC26(SiS_Pr->SiS_P3c6,0xFF);

#ifdef CONFIG_FB_SIS_315
   if(SiS_Pr->ChipType >= SIS_315H) {
      if(SiS_Pr->SiS_IF_DEF_LVDS == 1) {
	 if(!(SiS_IsDualEdge(SiS_Pr))) {
	    SiS_SetRegAND(SiS_Pr->SiS_Part1Port,0x13,0xfb);
	 }
      }
   }
#endif

   if(SiS_Pr->SiS_VBType & VB_SIS30xBLV) {
      if(SiS_Pr->ChipType >= SIS_315H) {
#ifdef CONFIG_FB_SIS_315
	 if(!SiS_Pr->SiS_ROMNew) {
	    if(SiS_IsVAMode(SiS_Pr)) {
	       SiS_SetRegOR(SiS_Pr->SiS_P3d4,0x35,0x01);
	    } else {
	       SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x35,0xFE);
	    }
	 }

	 SiS_SetReg(SiS_Pr->SiS_P3d4,0x38,backupreg);

	 if((IS_SIS650) && (SiS_GetReg(SiS_Pr->SiS_P3d4,0x30) & 0xfc)) {
	    if((ModeNo == 0x03) || (ModeNo == 0x10)) {
	       SiS_SetRegOR(SiS_Pr->SiS_P3d4,0x51,0x80);
	       SiS_SetRegOR(SiS_Pr->SiS_P3d4,0x56,0x08);
	    }
	 }

	 if(SiS_GetReg(SiS_Pr->SiS_P3d4,0x30) & SetCRT2ToLCD) {
	    SiS_SetRegAND(SiS_Pr->SiS_P3d4,0x38,0xfc);
	 }
#endif
      } else if((SiS_Pr->ChipType == SIS_630) ||
	        (SiS_Pr->ChipType == SIS_730)) {
	 FUNC24(SiS_Pr->SiS_P3d4,0x35,backupreg);
      }
   }

   FUNC6(SiS_Pr);

   FUNC13(SiS_Pr);

   /* We never lock registers in XF86 */
   if(KeepLockReg != 0xA1) FUNC24(SiS_Pr->SiS_P3c4,0x05,0x00);

   return true;
}