
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlcore_platdev_data {TYPE_1__* family; } ;
struct wl18xx_priv {int conf; } ;
struct wl1271 {int conf; struct wl18xx_priv* priv; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int cfg_name; } ;


 struct wlcore_platdev_data* dev_get_platdata (int *) ;
 int memcpy (int *,int *,int) ;
 int wl1271_warning (char*) ;
 int wl18xx_conf ;
 int wl18xx_default_priv_conf ;
 scalar_t__ wl18xx_load_conf_file (struct device*,int *,int *,int ) ;

__attribute__((used)) static int wl18xx_conf_init(struct wl1271 *wl, struct device *dev)
{
 struct platform_device *pdev = wl->pdev;
 struct wlcore_platdev_data *pdata = dev_get_platdata(&pdev->dev);
 struct wl18xx_priv *priv = wl->priv;

 if (wl18xx_load_conf_file(dev, &wl->conf, &priv->conf,
      pdata->family->cfg_name) < 0) {
  wl1271_warning("falling back to default config");


  memcpy(&wl->conf, &wl18xx_conf, sizeof(wl->conf));

  memcpy(&priv->conf, &wl18xx_default_priv_conf,
         sizeof(priv->conf));
 }

 return 0;
}
