
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum disp_output { ____Placeholder_disp_output } disp_output ;


 int CRT_2_MASK ;
 int CRT_2_OFFSET ;
 int CRT_2_USAGE ;
 int CRT_DISPLAY_CTRL ;
 unsigned int CRT_DISPLAY_CTRL_BLANK ;
 unsigned int CRT_DISPLAY_CTRL_SELECT_MASK ;
 int CRT_DISPLAY_CTRL_SELECT_SHIFT ;
 int DAC_MASK ;
 int DAC_OFFSET ;
 int DAC_USAGE ;
 int DPMS_MASK ;
 int DPMS_OFFSET ;
 int DPMS_USAGE ;
 int PANEL_DISPLAY_CTRL ;
 unsigned int PANEL_DISPLAY_CTRL_SELECT_MASK ;
 int PANEL_DISPLAY_CTRL_SELECT_SHIFT ;
 int PNL_2_MASK ;
 int PNL_2_OFFSET ;
 int PNL_2_USAGE ;
 int PNL_SEQ_MASK ;
 int PNL_SEQ_OFFSET ;
 int PNL_SEQ_USAGE ;
 int PRI_TP_MASK ;
 int PRI_TP_OFFSET ;
 int PRI_TP_USAGE ;
 int SEC_TP_MASK ;
 int SEC_TP_OFFSET ;
 int SEC_TP_USAGE ;
 int ddk750_set_dpms (int) ;
 unsigned int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 int set_DAC (int) ;
 int set_display_control (int,int) ;
 int sw_panel_power_sequence (int,int) ;

void ddk750_set_logical_disp_out(enum disp_output output)
{
 unsigned int reg;

 if (output & PNL_2_USAGE) {

  reg = peek32(PANEL_DISPLAY_CTRL);
  reg &= ~PANEL_DISPLAY_CTRL_SELECT_MASK;
  reg |= (((output & PNL_2_MASK) >> PNL_2_OFFSET) <<
   PANEL_DISPLAY_CTRL_SELECT_SHIFT);
  poke32(PANEL_DISPLAY_CTRL, reg);
 }

 if (output & CRT_2_USAGE) {

  reg = peek32(CRT_DISPLAY_CTRL);
  reg &= ~CRT_DISPLAY_CTRL_SELECT_MASK;
  reg |= (((output & CRT_2_MASK) >> CRT_2_OFFSET) <<
   CRT_DISPLAY_CTRL_SELECT_SHIFT);

  reg &= ~CRT_DISPLAY_CTRL_BLANK;
  poke32(CRT_DISPLAY_CTRL, reg);
 }

 if (output & PRI_TP_USAGE) {

  set_display_control(0, (output & PRI_TP_MASK) >> PRI_TP_OFFSET);
 }

 if (output & SEC_TP_USAGE) {

  set_display_control(1, (output & SEC_TP_MASK) >> SEC_TP_OFFSET);
 }

 if (output & PNL_SEQ_USAGE) {

  sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
  4);
 }

 if (output & DAC_USAGE)
  set_DAC((output & DAC_MASK) >> DAC_OFFSET);

 if (output & DPMS_USAGE)
  ddk750_set_dpms((output & DPMS_MASK) >> DPMS_OFFSET);
}
