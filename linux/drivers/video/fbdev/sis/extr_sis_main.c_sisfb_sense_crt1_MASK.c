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
typedef  int u16 ;
struct TYPE_2__ {int SiS_MyCR63; } ;
struct sis_video_info {scalar_t__ sisvga_engine; scalar_t__ chip; TYPE_1__ SiS_Pr; int /*<<< orphan*/  vbflags2; int /*<<< orphan*/  vbflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SISCR ; 
 int /*<<< orphan*/  SISSR ; 
 scalar_t__ SIS_315_VGA ; 
 scalar_t__ SIS_330 ; 
 scalar_t__ SIS_340 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (struct sis_video_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct sis_video_info*) ; 

__attribute__((used)) static void FUNC8(struct sis_video_info *ivideo)
{
    bool mustwait = false;
    u8  sr1F, cr17;
#ifdef CONFIG_FB_SIS_315
    u8  cr63=0;
#endif
    u16 temp = 0xffff;
    int i;

    sr1F = FUNC0(SISSR, 0x1F);
    FUNC5(SISSR, 0x1F, 0x04);
    FUNC3(SISSR, 0x1F, 0x3F);
    if(sr1F & 0xc0) mustwait = true;

#ifdef CONFIG_FB_SIS_315
    if(ivideo->sisvga_engine == SIS_315_VGA) {
       cr63 = SiS_GetReg(SISCR, ivideo->SiS_Pr.SiS_MyCR63);
       cr63 &= 0x40;
       SiS_SetRegAND(SISCR, ivideo->SiS_Pr.SiS_MyCR63, 0xBF);
    }
#endif

    cr17 = FUNC0(SISCR, 0x17);
    cr17 &= 0x80;
    if(!cr17) {
       FUNC5(SISCR, 0x17, 0x80);
       mustwait = true;
       FUNC2(SISSR, 0x00, 0x01);
       FUNC2(SISSR, 0x00, 0x03);
    }

    if(mustwait) {
       for(i=0; i < 10; i++) FUNC7(ivideo);
    }

#ifdef CONFIG_FB_SIS_315
    if(ivideo->chip >= SIS_330) {
       SiS_SetRegAND(SISCR, 0x32, ~0x20);
       if(ivideo->chip >= SIS_340) {
	   SiS_SetReg(SISCR, 0x57, 0x4a);
       } else {
	   SiS_SetReg(SISCR, 0x57, 0x5f);
       }
	SiS_SetRegOR(SISCR, 0x53, 0x02);
	while ((SiS_GetRegByte(SISINPSTAT)) & 0x01)    break;
	while (!((SiS_GetRegByte(SISINPSTAT)) & 0x01)) break;
	if ((SiS_GetRegByte(SISMISCW)) & 0x10) temp = 1;
	SiS_SetRegAND(SISCR, 0x53, 0xfd);
	SiS_SetRegAND(SISCR, 0x57, 0x00);
    }
#endif

    if(temp == 0xffff) {
       i = 3;
       do {
	  temp = FUNC1(&ivideo->SiS_Pr, ivideo->vbflags,
		ivideo->sisvga_engine, 0, 0, NULL, ivideo->vbflags2);
       } while(((temp == 0) || (temp == 0xffff)) && i--);

       if((temp == 0) || (temp == 0xffff)) {
          if(FUNC6(ivideo)) temp = 1;
       }
    }

    if((temp) && (temp != 0xffff)) {
       FUNC5(SISCR, 0x32, 0x20);
    }

#ifdef CONFIG_FB_SIS_315
    if(ivideo->sisvga_engine == SIS_315_VGA) {
	SiS_SetRegANDOR(SISCR, ivideo->SiS_Pr.SiS_MyCR63, 0xBF, cr63);
    }
#endif

    FUNC4(SISCR, 0x17, 0x7F, cr17);

    FUNC2(SISSR, 0x1F, sr1F);
}