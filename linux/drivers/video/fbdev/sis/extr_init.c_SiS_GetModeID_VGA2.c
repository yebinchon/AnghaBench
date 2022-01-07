
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIS_315_VGA ;
 unsigned short SiS_GetModeID (int,int ,int,int,int,int,int ,int ) ;
 unsigned int VB2_30xB ;
 unsigned int VB2_SISVGA2BRIDGE ;

unsigned short
SiS_GetModeID_VGA2(int VGAEngine, unsigned int VBFlags, int HDisplay, int VDisplay, int Depth,
   unsigned int VBFlags2)
{
   if(!(VBFlags2 & VB2_SISVGA2BRIDGE)) return 0;

   if(HDisplay >= 1920) return 0;

   switch(HDisplay)
   {
 case 1600:
  if(VDisplay == 1200) {
   if(VGAEngine != SIS_315_VGA) return 0;
   if(!(VBFlags2 & VB2_30xB)) return 0;
  }
  break;
 case 1680:
  if(VDisplay == 1050) {
   if(VGAEngine != SIS_315_VGA) return 0;
   if(!(VBFlags2 & VB2_30xB)) return 0;
  }
  break;
   }

   return SiS_GetModeID(VGAEngine, 0, HDisplay, VDisplay, Depth, 0, 0, 0);
}
