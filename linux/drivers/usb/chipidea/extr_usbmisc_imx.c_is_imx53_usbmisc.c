
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_usbmisc_data {int dev; } ;
struct imx_usbmisc {int * ops; } ;


 struct imx_usbmisc* dev_get_drvdata (int ) ;
 int imx53_usbmisc_ops ;

__attribute__((used)) static inline bool is_imx53_usbmisc(struct imx_usbmisc_data *data)
{
 struct imx_usbmisc *usbmisc = dev_get_drvdata(data->dev);

 return usbmisc->ops == &imx53_usbmisc_ops;
}
