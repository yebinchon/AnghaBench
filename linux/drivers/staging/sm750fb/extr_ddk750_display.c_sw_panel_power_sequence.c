
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PANEL_DISPLAY_CTRL ;
 unsigned int PANEL_DISPLAY_CTRL_DATA ;
 unsigned int PANEL_DISPLAY_CTRL_FPEN ;
 unsigned int PANEL_DISPLAY_CTRL_VBIASEN ;
 unsigned int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 int primary_wait_vertical_sync (int) ;

__attribute__((used)) static void sw_panel_power_sequence(int disp, int delay)
{
 unsigned int reg;


 reg = peek32(PANEL_DISPLAY_CTRL);
 reg |= (disp ? PANEL_DISPLAY_CTRL_FPEN : 0);
 poke32(PANEL_DISPLAY_CTRL, reg);
 primary_wait_vertical_sync(delay);

 reg = peek32(PANEL_DISPLAY_CTRL);
 reg |= (disp ? PANEL_DISPLAY_CTRL_DATA : 0);
 poke32(PANEL_DISPLAY_CTRL, reg);
 primary_wait_vertical_sync(delay);

 reg = peek32(PANEL_DISPLAY_CTRL);
 reg |= (disp ? PANEL_DISPLAY_CTRL_VBIASEN : 0);
 poke32(PANEL_DISPLAY_CTRL, reg);
 primary_wait_vertical_sync(delay);

 reg = peek32(PANEL_DISPLAY_CTRL);
 reg |= (disp ? PANEL_DISPLAY_CTRL_FPEN : 0);
 poke32(PANEL_DISPLAY_CTRL, reg);
 primary_wait_vertical_sync(delay);
}
