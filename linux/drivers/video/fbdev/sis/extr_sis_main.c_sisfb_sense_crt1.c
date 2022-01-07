
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int SiS_MyCR63; } ;
struct sis_video_info {scalar_t__ sisvga_engine; scalar_t__ chip; TYPE_1__ SiS_Pr; int vbflags2; int vbflags; } ;


 int SISCR ;
 int SISSR ;
 scalar_t__ SIS_315_VGA ;
 scalar_t__ SIS_330 ;
 scalar_t__ SIS_340 ;
 int SiS_GetReg (int ,int) ;
 int SiS_HandleDDC (TYPE_1__*,int ,scalar_t__,int ,int ,int *,int ) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegAND (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,int) ;
 int SiS_SetRegOR (int ,int,int) ;
 scalar_t__ sisfb_test_DDC1 (struct sis_video_info*) ;
 int sisfbwaitretracecrt1 (struct sis_video_info*) ;

__attribute__((used)) static void sisfb_sense_crt1(struct sis_video_info *ivideo)
{
    bool mustwait = 0;
    u8 sr1F, cr17;



    u16 temp = 0xffff;
    int i;

    sr1F = SiS_GetReg(SISSR, 0x1F);
    SiS_SetRegOR(SISSR, 0x1F, 0x04);
    SiS_SetRegAND(SISSR, 0x1F, 0x3F);
    if(sr1F & 0xc0) mustwait = 1;
    cr17 = SiS_GetReg(SISCR, 0x17);
    cr17 &= 0x80;
    if(!cr17) {
       SiS_SetRegOR(SISCR, 0x17, 0x80);
       mustwait = 1;
       SiS_SetReg(SISSR, 0x00, 0x01);
       SiS_SetReg(SISSR, 0x00, 0x03);
    }

    if(mustwait) {
       for(i=0; i < 10; i++) sisfbwaitretracecrt1(ivideo);
    }
    if(temp == 0xffff) {
       i = 3;
       do {
   temp = SiS_HandleDDC(&ivideo->SiS_Pr, ivideo->vbflags,
  ivideo->sisvga_engine, 0, 0, ((void*)0), ivideo->vbflags2);
       } while(((temp == 0) || (temp == 0xffff)) && i--);

       if((temp == 0) || (temp == 0xffff)) {
          if(sisfb_test_DDC1(ivideo)) temp = 1;
       }
    }

    if((temp) && (temp != 0xffff)) {
       SiS_SetRegOR(SISCR, 0x32, 0x20);
    }







    SiS_SetRegANDOR(SISCR, 0x17, 0x7F, cr17);

    SiS_SetReg(SISSR, 0x1F, sr1F);
}
