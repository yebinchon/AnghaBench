
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_conn_info {int id_irq; int vbus_irq; void* role_sw; void* vbus_gpiod; void* id_gpiod; void* vbus; int dw_det; int debounce_jiffies; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int USB_CONN_IRQF ;
 int USB_GPIO_DEB_MS ;
 int USB_GPIO_DEB_US ;
 int dev_err (struct device*,char*) ;
 void* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct usb_conn_info* devm_kzalloc (struct device*,int,int ) ;
 void* devm_regulator_get (struct device*,char*) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int ,int ,struct usb_conn_info*) ;
 int gpiod_set_debounce (void*,int ) ;
 void* gpiod_to_irq (void*) ;
 int msecs_to_jiffies (int ) ;
 int platform_set_drvdata (struct platform_device*,struct usb_conn_info*) ;
 int usb_conn_detect_cable ;
 int usb_conn_isr ;
 int usb_conn_queue_dwork (struct usb_conn_info*,int ) ;
 void* usb_role_switch_get (struct device*) ;
 int usb_role_switch_put (void*) ;

__attribute__((used)) static int usb_conn_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct usb_conn_info *info;
 int ret = 0;

 info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = dev;
 info->id_gpiod = devm_gpiod_get_optional(dev, "id", GPIOD_IN);
 if (IS_ERR(info->id_gpiod))
  return PTR_ERR(info->id_gpiod);

 info->vbus_gpiod = devm_gpiod_get_optional(dev, "vbus", GPIOD_IN);
 if (IS_ERR(info->vbus_gpiod))
  return PTR_ERR(info->vbus_gpiod);

 if (!info->id_gpiod && !info->vbus_gpiod) {
  dev_err(dev, "failed to get gpios\n");
  return -ENODEV;
 }

 if (info->id_gpiod)
  ret = gpiod_set_debounce(info->id_gpiod, USB_GPIO_DEB_US);
 if (!ret && info->vbus_gpiod)
  ret = gpiod_set_debounce(info->vbus_gpiod, USB_GPIO_DEB_US);
 if (ret < 0)
  info->debounce_jiffies = msecs_to_jiffies(USB_GPIO_DEB_MS);

 INIT_DELAYED_WORK(&info->dw_det, usb_conn_detect_cable);

 info->vbus = devm_regulator_get(dev, "vbus");
 if (IS_ERR(info->vbus)) {
  dev_err(dev, "failed to get vbus\n");
  return PTR_ERR(info->vbus);
 }

 info->role_sw = usb_role_switch_get(dev);
 if (IS_ERR(info->role_sw)) {
  if (PTR_ERR(info->role_sw) != -EPROBE_DEFER)
   dev_err(dev, "failed to get role switch\n");

  return PTR_ERR(info->role_sw);
 }

 if (info->id_gpiod) {
  info->id_irq = gpiod_to_irq(info->id_gpiod);
  if (info->id_irq < 0) {
   dev_err(dev, "failed to get ID IRQ\n");
   ret = info->id_irq;
   goto put_role_sw;
  }

  ret = devm_request_threaded_irq(dev, info->id_irq, ((void*)0),
      usb_conn_isr, USB_CONN_IRQF,
      pdev->name, info);
  if (ret < 0) {
   dev_err(dev, "failed to request ID IRQ\n");
   goto put_role_sw;
  }
 }

 if (info->vbus_gpiod) {
  info->vbus_irq = gpiod_to_irq(info->vbus_gpiod);
  if (info->vbus_irq < 0) {
   dev_err(dev, "failed to get VBUS IRQ\n");
   ret = info->vbus_irq;
   goto put_role_sw;
  }

  ret = devm_request_threaded_irq(dev, info->vbus_irq, ((void*)0),
      usb_conn_isr, USB_CONN_IRQF,
      pdev->name, info);
  if (ret < 0) {
   dev_err(dev, "failed to request VBUS IRQ\n");
   goto put_role_sw;
  }
 }

 platform_set_drvdata(pdev, info);


 usb_conn_queue_dwork(info, 0);

 return 0;

put_role_sw:
 usb_role_switch_put(info->role_sw);
 return ret;
}
