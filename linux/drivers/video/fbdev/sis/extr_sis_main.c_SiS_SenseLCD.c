
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int PanelSelfDetected; scalar_t__ DDCPortMixup; } ;
struct sis_video_info {int vbflags2; TYPE_1__ SiS_Pr; int sisvga_engine; int vbflags; } ;


 int SISCR ;
 int SiS_GetReg (int ,int) ;
 unsigned short SiS_HandleDDC (TYPE_1__*,int ,int ,unsigned short,int,unsigned char*,int) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,int) ;
 int SiS_SetRegOR (int ,int,int) ;
 int VB2_30xBDH ;
 int VB2_30xC ;
 int VB2_SISTMDSBRIDGE ;

__attribute__((used)) static void SiS_SenseLCD(struct sis_video_info *ivideo)
{
 unsigned char buffer[256];
 unsigned short temp, realcrtno, i;
 u8 reg, cr37 = 0, paneltype = 0;
 u16 xres, yres;

 ivideo->SiS_Pr.PanelSelfDetected = 0;


 if(!(ivideo->vbflags2 & VB2_SISTMDSBRIDGE))
  return;
 if(ivideo->vbflags2 & VB2_30xBDH)
  return;


 reg = SiS_GetReg(SISCR, 0x32);
 if(reg & 0x08)
  return;

 realcrtno = 1;
 if(ivideo->SiS_Pr.DDCPortMixup)
  realcrtno = 0;


 temp = SiS_HandleDDC(&ivideo->SiS_Pr, ivideo->vbflags, ivideo->sisvga_engine,
    realcrtno, 0, &buffer[0], ivideo->vbflags2);

 if((!temp) || (temp == 0xffff) || (!(temp & 0x02)))
  return;


 i = 3;
 do {
  temp = SiS_HandleDDC(&ivideo->SiS_Pr, ivideo->vbflags,
    ivideo->sisvga_engine, realcrtno, 1,
    &buffer[0], ivideo->vbflags2);
 } while((temp) && i--);

 if(temp)
  return;


 if(!(buffer[0x14] & 0x80))
  return;


 if(!(buffer[0x18] & 0x02))
  return;

 xres = buffer[0x38] | ((buffer[0x3a] & 0xf0) << 4);
 yres = buffer[0x3b] | ((buffer[0x3d] & 0xf0) << 4);

 switch(xres) {
  case 1024:
   if(yres == 768)
    paneltype = 0x02;
   break;
  case 1280:
   if(yres == 1024)
    paneltype = 0x03;
   break;
  case 1600:
   if((yres == 1200) && (ivideo->vbflags2 & VB2_30xC))
    paneltype = 0x0b;
   break;
 }

 if(!paneltype)
  return;

 if(buffer[0x23])
  cr37 |= 0x10;

 if((buffer[0x47] & 0x18) == 0x18)
  cr37 |= ((((buffer[0x47] & 0x06) ^ 0x06) << 5) | 0x20);
 else
  cr37 |= 0xc0;

 SiS_SetReg(SISCR, 0x36, paneltype);
 cr37 &= 0xf1;
 SiS_SetRegANDOR(SISCR, 0x37, 0x0c, cr37);
 SiS_SetRegOR(SISCR, 0x32, 0x08);

 ivideo->SiS_Pr.PanelSelfDetected = 1;
}
