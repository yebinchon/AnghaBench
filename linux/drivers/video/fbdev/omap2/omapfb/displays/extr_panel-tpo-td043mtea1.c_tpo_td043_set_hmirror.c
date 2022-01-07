
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int hmirror; int vmirror; int spi; } ;
struct omap_dss_device {int dev; } ;


 struct panel_drv_data* dev_get_drvdata (int ) ;
 int tpo_td043_write_mirror (int ,int,int ) ;

__attribute__((used)) static int tpo_td043_set_hmirror(struct omap_dss_device *dssdev, bool enable)
{
 struct panel_drv_data *ddata = dev_get_drvdata(dssdev->dev);

 ddata->hmirror = enable;
 return tpo_td043_write_mirror(ddata->spi, ddata->hmirror,
   ddata->vmirror);
}
