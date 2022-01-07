
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_conn_info {scalar_t__ last_role; int role_sw; int vbus; int dw_det; } ;
struct platform_device {int dummy; } ;


 scalar_t__ USB_ROLE_HOST ;
 int cancel_delayed_work_sync (int *) ;
 struct usb_conn_info* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int usb_role_switch_put (int ) ;

__attribute__((used)) static int usb_conn_remove(struct platform_device *pdev)
{
 struct usb_conn_info *info = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&info->dw_det);

 if (info->last_role == USB_ROLE_HOST)
  regulator_disable(info->vbus);

 usb_role_switch_put(info->role_sw);

 return 0;
}
