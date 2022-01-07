
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int dummy; } ;


 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int dsicm_dcs_write_0 (struct panel_drv_data*,int ) ;
 int hw_guard_start (struct panel_drv_data*,int) ;
 int hw_guard_wait (struct panel_drv_data*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dsicm_sleep_out(struct panel_drv_data *ddata)
{
 int r;

 hw_guard_wait(ddata);

 r = dsicm_dcs_write_0(ddata, MIPI_DCS_EXIT_SLEEP_MODE);
 if (r)
  return r;

 hw_guard_start(ddata, 120);

 usleep_range(5000, 10000);

 return 0;
}
