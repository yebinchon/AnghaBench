
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lynxfb_output {int paths; } ;


 int CRT_DISPLAY_CTRL ;
 unsigned int CRT_DISPLAY_CTRL_BLANK ;





 int PANEL_DISPLAY_CTRL ;
 unsigned int PANEL_DISPLAY_CTRL_DATA ;
 int SYSTEM_CTRL ;
 unsigned int SYSTEM_CTRL_DPMS_MASK ;
 unsigned int SYSTEM_CTRL_DPMS_VNHN ;
 unsigned int SYSTEM_CTRL_DPMS_VNHP ;
 unsigned int SYSTEM_CTRL_DPMS_VPHN ;
 unsigned int SYSTEM_CTRL_DPMS_VPHP ;
 unsigned int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 int pr_debug (char*) ;
 int sm750_crt ;
 int sm750_panel ;

int hw_sm750_setBLANK(struct lynxfb_output *output, int blank)
{
 unsigned int dpms, pps, crtdb;

 dpms = 0;
 pps = 0;
 crtdb = 0;

 switch (blank) {
 case 129:
  pr_debug("flag = FB_BLANK_UNBLANK\n");
  dpms = SYSTEM_CTRL_DPMS_VPHP;
  pps = PANEL_DISPLAY_CTRL_DATA;
  break;
 case 131:
  pr_debug("flag = FB_BLANK_NORMAL\n");
  dpms = SYSTEM_CTRL_DPMS_VPHP;
  crtdb = CRT_DISPLAY_CTRL_BLANK;
  break;
 case 128:
  dpms = SYSTEM_CTRL_DPMS_VNHP;
  crtdb = CRT_DISPLAY_CTRL_BLANK;
  break;
 case 132:
  dpms = SYSTEM_CTRL_DPMS_VPHN;
  crtdb = CRT_DISPLAY_CTRL_BLANK;
  break;
 case 130:
  dpms = SYSTEM_CTRL_DPMS_VNHN;
  crtdb = CRT_DISPLAY_CTRL_BLANK;
  break;
 }

 if (output->paths & sm750_crt) {
  unsigned int val = peek32(SYSTEM_CTRL) & ~SYSTEM_CTRL_DPMS_MASK;

  poke32(SYSTEM_CTRL, val | dpms);

  val = peek32(CRT_DISPLAY_CTRL) & ~CRT_DISPLAY_CTRL_BLANK;
  poke32(CRT_DISPLAY_CTRL, val | crtdb);
 }

 if (output->paths & sm750_panel) {
  unsigned int val = peek32(PANEL_DISPLAY_CTRL);

  val &= ~PANEL_DISPLAY_CTRL_DATA;
  val |= pps;
  poke32(PANEL_DISPLAY_CTRL, val);
 }

 return 0;
}
