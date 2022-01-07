
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intelfb_info {int cursor_on; int cursor_blanked; } ;
struct fb_info {int dummy; } ;


 int ADPA ;
 int ADPA_DPMS_CONTROL_MASK ;
 int ADPA_DPMS_D0 ;
 int ADPA_DPMS_D1 ;
 int ADPA_DPMS_D2 ;
 int ADPA_DPMS_D3 ;
 int DBG_MSG (char*,int) ;
 int DISPPLANE_PLANE_ENABLE ;
 int DSPABASE ;
 int DSPACNTR ;





 struct intelfb_info* GET_DINFO (struct fb_info*) ;
 int INREG (int ) ;
 int OUTREG (int ,int) ;
 int intelfbhw_cursor_hide (struct intelfb_info*) ;
 int intelfbhw_cursor_show (struct intelfb_info*) ;

void intelfbhw_do_blank(int blank, struct fb_info *info)
{
 struct intelfb_info *dinfo = GET_DINFO(info);
 u32 tmp;






 tmp = INREG(DSPACNTR);
 if (blank)
  tmp &= ~DISPPLANE_PLANE_ENABLE;
 else
  tmp |= DISPPLANE_PLANE_ENABLE;
 OUTREG(DSPACNTR, tmp);

 tmp = INREG(DSPABASE);
 OUTREG(DSPABASE, tmp);





 if (dinfo->cursor_on) {
  if (blank)
   intelfbhw_cursor_hide(dinfo);
  else
   intelfbhw_cursor_show(dinfo);
  dinfo->cursor_on = 1;
 }
 dinfo->cursor_blanked = blank;


 tmp = INREG(ADPA) & ~ADPA_DPMS_CONTROL_MASK;
 switch (blank) {
 case 129:
 case 131:
  tmp |= ADPA_DPMS_D0;
  break;
 case 128:
  tmp |= ADPA_DPMS_D1;
  break;
 case 132:
  tmp |= ADPA_DPMS_D2;
  break;
 case 130:
  tmp |= ADPA_DPMS_D3;
  break;
 }
 OUTREG(ADPA, tmp);

 return;
}
