
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct omap_dss_device {int name; } ;
struct panel_drv_data {struct omap_dss_device dssdev; int datapairs; struct omap_dss_device* in; int reset_gpio; } ;
struct panel_acx565akm_platform_data {int name; int datapairs; int source; int reset_gpio; } ;


 int EPROBE_DEFER ;
 int dev_err (int *,char*,int ) ;
 struct panel_drv_data* dev_get_drvdata (int *) ;
 struct panel_acx565akm_platform_data* dev_get_platdata (int *) ;
 struct omap_dss_device* omap_dss_find_output (int ) ;

__attribute__((used)) static int acx565akm_probe_pdata(struct spi_device *spi)
{
 const struct panel_acx565akm_platform_data *pdata;
 struct panel_drv_data *ddata = dev_get_drvdata(&spi->dev);
 struct omap_dss_device *dssdev, *in;

 pdata = dev_get_platdata(&spi->dev);

 ddata->reset_gpio = pdata->reset_gpio;

 in = omap_dss_find_output(pdata->source);
 if (in == ((void*)0)) {
  dev_err(&spi->dev, "failed to find video source '%s'\n",
    pdata->source);
  return -EPROBE_DEFER;
 }
 ddata->in = in;

 ddata->datapairs = pdata->datapairs;

 dssdev = &ddata->dssdev;
 dssdev->name = pdata->name;

 return 0;
}
