
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct extcon_dev {int dummy; } ;
struct TYPE_4__ {int (* notifier_call ) (TYPE_1__*,int,struct extcon_dev*) ;} ;
struct dwc3_qcom {struct extcon_dev* edev; TYPE_1__ vbus_nb; TYPE_1__ host_nb; struct extcon_dev* host_edev; struct device* dev; } ;
struct device {int of_node; } ;


 int EXTCON_USB ;
 int EXTCON_USB_HOST ;
 scalar_t__ IS_ERR (struct extcon_dev*) ;
 int PTR_ERR (struct extcon_dev*) ;
 int dev_err (struct device*,char*) ;
 int devm_extcon_register_notifier (struct device*,struct extcon_dev*,int ,TYPE_1__*) ;
 int dwc3_qcom_host_notifier (TYPE_1__*,int,struct extcon_dev*) ;
 int dwc3_qcom_vbus_notifier (TYPE_1__*,int,struct extcon_dev*) ;
 void* extcon_get_edev_by_phandle (struct device*,int) ;
 scalar_t__ extcon_get_state (struct extcon_dev*,int ) ;
 int of_property_read_bool (int ,char*) ;

__attribute__((used)) static int dwc3_qcom_register_extcon(struct dwc3_qcom *qcom)
{
 struct device *dev = qcom->dev;
 struct extcon_dev *host_edev;
 int ret;

 if (!of_property_read_bool(dev->of_node, "extcon"))
  return 0;

 qcom->edev = extcon_get_edev_by_phandle(dev, 0);
 if (IS_ERR(qcom->edev))
  return PTR_ERR(qcom->edev);

 qcom->vbus_nb.notifier_call = dwc3_qcom_vbus_notifier;

 qcom->host_edev = extcon_get_edev_by_phandle(dev, 1);
 if (IS_ERR(qcom->host_edev))
  qcom->host_edev = ((void*)0);

 ret = devm_extcon_register_notifier(dev, qcom->edev, EXTCON_USB,
         &qcom->vbus_nb);
 if (ret < 0) {
  dev_err(dev, "VBUS notifier register failed\n");
  return ret;
 }

 if (qcom->host_edev)
  host_edev = qcom->host_edev;
 else
  host_edev = qcom->edev;

 qcom->host_nb.notifier_call = dwc3_qcom_host_notifier;
 ret = devm_extcon_register_notifier(dev, host_edev, EXTCON_USB_HOST,
         &qcom->host_nb);
 if (ret < 0) {
  dev_err(dev, "Host notifier register failed\n");
  return ret;
 }


 if (extcon_get_state(qcom->edev, EXTCON_USB) ||
     !extcon_get_state(host_edev, EXTCON_USB_HOST))
  dwc3_qcom_vbus_notifier(&qcom->vbus_nb, 1, qcom->edev);
 else
  dwc3_qcom_vbus_notifier(&qcom->vbus_nb, 0, qcom->edev);

 return 0;
}
