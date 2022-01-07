
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int dummy; } ;


 int MIPID_CMD_DISP_OFF ;
 int MIPID_CMD_DISP_ON ;
 int acx565akm_cmd (struct panel_drv_data*,int) ;

__attribute__((used)) static void set_display_state(struct panel_drv_data *ddata, int enabled)
{
 int cmd = enabled ? MIPID_CMD_DISP_ON : MIPID_CMD_DISP_OFF;

 acx565akm_cmd(ddata, cmd);
}
