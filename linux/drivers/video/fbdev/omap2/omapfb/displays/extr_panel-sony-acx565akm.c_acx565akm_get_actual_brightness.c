
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct panel_drv_data {int dummy; } ;


 int MIPID_CMD_READ_DISP_BRIGHTNESS ;
 int acx565akm_read (struct panel_drv_data*,int ,int*,int) ;

__attribute__((used)) static int acx565akm_get_actual_brightness(struct panel_drv_data *ddata)
{
 u8 bv;

 acx565akm_read(ddata, MIPID_CMD_READ_DISP_BRIGHTNESS, &bv, 1);

 return bv;
}
