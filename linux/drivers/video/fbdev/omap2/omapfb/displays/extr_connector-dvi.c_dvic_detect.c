
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int i2c_adapter; } ;
struct omap_dss_device {int dummy; } ;


 int dvic_ddc_read (int ,unsigned char*,int,int ) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static bool dvic_detect(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 unsigned char out;
 int r;

 if (!ddata->i2c_adapter)
  return 1;

 r = dvic_ddc_read(ddata->i2c_adapter, &out, 1, 0);

 return r == 0;
}
