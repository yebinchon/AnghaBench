
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct panel_drv_data {int dummy; } ;


 int CTRL_DISP_BACKLIGHT_ON ;
 int CTRL_DISP_BRIGHTNESS_CTRL_ON ;
 int MIPID_CMD_READ_CTRL_DISP ;
 int MIPID_CMD_WRITE_CTRL_DISP ;
 int acx565akm_read (struct panel_drv_data*,int ,int *,int) ;
 int acx565akm_write (struct panel_drv_data*,int ,int *,int) ;

__attribute__((used)) static void enable_backlight_ctrl(struct panel_drv_data *ddata, int enable)
{
 u16 ctrl;

 acx565akm_read(ddata, MIPID_CMD_READ_CTRL_DISP, (u8 *)&ctrl, 1);
 if (enable) {
  ctrl |= CTRL_DISP_BRIGHTNESS_CTRL_ON |
   CTRL_DISP_BACKLIGHT_ON;
 } else {
  ctrl &= ~(CTRL_DISP_BRIGHTNESS_CTRL_ON |
     CTRL_DISP_BACKLIGHT_ON);
 }

 ctrl |= 1 << 8;
 acx565akm_write(ddata, MIPID_CMD_WRITE_CTRL_DISP, (u8 *)&ctrl, 2);
}
