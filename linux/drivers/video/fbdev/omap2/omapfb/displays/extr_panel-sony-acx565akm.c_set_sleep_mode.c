
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int dummy; } ;


 int MIPID_CMD_SLEEP_IN ;
 int MIPID_CMD_SLEEP_OUT ;
 int acx565akm_cmd (struct panel_drv_data*,int) ;
 int hw_guard_start (struct panel_drv_data*,int) ;
 int hw_guard_wait (struct panel_drv_data*) ;

__attribute__((used)) static void set_sleep_mode(struct panel_drv_data *ddata, int on)
{
 int cmd;

 if (on)
  cmd = MIPID_CMD_SLEEP_IN;
 else
  cmd = MIPID_CMD_SLEEP_OUT;




 hw_guard_wait(ddata);
 acx565akm_cmd(ddata, cmd);
 hw_guard_start(ddata, 120);
}
