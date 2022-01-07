
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct panel_drv_data {int dummy; } ;


 int MIPID_CMD_WRITE_DISP_BRIGHTNESS ;
 int acx565akm_write (struct panel_drv_data*,int ,int *,int) ;
 int enable_backlight_ctrl (struct panel_drv_data*,int) ;

__attribute__((used)) static void acx565akm_set_brightness(struct panel_drv_data *ddata, int level)
{
 int bv;

 bv = level | (1 << 8);
 acx565akm_write(ddata, MIPID_CMD_WRITE_DISP_BRIGHTNESS, (u8 *)&bv, 2);

 if (level)
  enable_backlight_ctrl(ddata, 1);
 else
  enable_backlight_ctrl(ddata, 0);
}
