
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_usbmisc_data {int dev; } ;
struct imx_usbmisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_wakeup ) (struct imx_usbmisc_data*,int) ;} ;


 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int stub1 (struct imx_usbmisc_data*,int) ;

int imx_usbmisc_set_wakeup(struct imx_usbmisc_data *data, bool enabled)
{
 struct imx_usbmisc *usbmisc;

 if (!data)
  return 0;

 usbmisc = dev_get_drvdata(data->dev);
 if (!usbmisc->ops->set_wakeup)
  return 0;
 return usbmisc->ops->set_wakeup(data, enabled);
}
