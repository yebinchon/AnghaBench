
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DISPLAY_CTRL_TIMING ;
 int PANEL_DISPLAY_CTRL ;
 int PANEL_PLL_CTRL ;
 unsigned int PLL_CTRL_POWER ;
 int SYSTEM_CTRL ;
 unsigned int SYSTEM_CTRL_PANEL_VSYNC_ACTIVE ;
 unsigned int peek32 (int ) ;

__attribute__((used)) static void primary_wait_vertical_sync(int delay)
{
 unsigned int status;





 if (!(peek32(PANEL_PLL_CTRL) & PLL_CTRL_POWER) ||
     !(peek32(PANEL_DISPLAY_CTRL) & DISPLAY_CTRL_TIMING))
  return;

 while (delay-- > 0) {

  do {
   status = peek32(SYSTEM_CTRL);
  } while (status & SYSTEM_CTRL_PANEL_VSYNC_ACTIVE);


  do {
   status = peek32(SYSTEM_CTRL);
  } while (!(status & SYSTEM_CTRL_PANEL_VSYNC_ACTIVE));
 }
}
