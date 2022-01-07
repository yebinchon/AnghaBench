
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ci_hdrc_imx_data {int usbmisc_data; int pinctrl_hsic_active; int pinctrl; } ;
struct ci_hdrc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct device* parent; } ;




 int dev_err (struct device*,char*,int) ;
 struct ci_hdrc_imx_data* dev_get_drvdata (struct device*) ;
 int imx_usbmisc_hsic_set_connect (int ) ;
 int pinctrl_select_state (int ,int ) ;

__attribute__((used)) static int ci_hdrc_imx_notify_event(struct ci_hdrc *ci, unsigned int event)
{
 struct device *dev = ci->dev->parent;
 struct ci_hdrc_imx_data *data = dev_get_drvdata(dev);
 int ret = 0;

 switch (event) {
 case 129:
  ret = pinctrl_select_state(data->pinctrl,
    data->pinctrl_hsic_active);
  if (ret)
   dev_err(dev, "hsic_active select failed, err=%d\n",
    ret);
  break;
 case 128:
  ret = imx_usbmisc_hsic_set_connect(data->usbmisc_data);
  if (ret)
   dev_err(dev,
    "hsic_set_connect failed, err=%d\n", ret);
  break;
 default:
  break;
 }

 return ret;
}
