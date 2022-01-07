
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int hmirror; } ;
struct omap_dss_device {int dev; } ;


 struct panel_drv_data* dev_get_drvdata (int ) ;

__attribute__((used)) static bool tpo_td043_get_hmirror(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dssdev->dev);

 return ddata->hmirror;
}
