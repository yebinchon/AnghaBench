
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lynxfb_output {int paths; } ;


 int CRT_DISPLAY_CTRL ;
 int CRT_DISPLAY_CTRL_BLANK ;
 int CRT_DISPLAY_CTRL_DPMS_0 ;
 int CRT_DISPLAY_CTRL_DPMS_1 ;
 int CRT_DISPLAY_CTRL_DPMS_2 ;
 int CRT_DISPLAY_CTRL_DPMS_3 ;
 int CRT_DISPLAY_CTRL_DPMS_MASK ;
 int EINVAL ;





 int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 int sm750_crt ;

int hw_sm750le_setBLANK(struct lynxfb_output *output, int blank)
{
 int dpms, crtdb;

 switch (blank) {
 case 129:
  dpms = CRT_DISPLAY_CTRL_DPMS_0;
  crtdb = 0;
  break;
 case 131:
  dpms = CRT_DISPLAY_CTRL_DPMS_0;
  crtdb = CRT_DISPLAY_CTRL_BLANK;
  break;
 case 128:
  dpms = CRT_DISPLAY_CTRL_DPMS_2;
  crtdb = CRT_DISPLAY_CTRL_BLANK;
  break;
 case 132:
  dpms = CRT_DISPLAY_CTRL_DPMS_1;
  crtdb = CRT_DISPLAY_CTRL_BLANK;
  break;
 case 130:
  dpms = CRT_DISPLAY_CTRL_DPMS_3;
  crtdb = CRT_DISPLAY_CTRL_BLANK;
  break;
 default:
  return -EINVAL;
 }

 if (output->paths & sm750_crt) {
  unsigned int val;

  val = peek32(CRT_DISPLAY_CTRL) & ~CRT_DISPLAY_CTRL_DPMS_MASK;
  poke32(CRT_DISPLAY_CTRL, val | dpms);

  val = peek32(CRT_DISPLAY_CTRL) & ~CRT_DISPLAY_CTRL_BLANK;
  poke32(CRT_DISPLAY_CTRL, val | crtdb);
 }
 return 0;
}
