
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int is_host; } ;
struct device {int dummy; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;


 int USB_ROLE_HOST ;
 struct ssusb_mtk* dev_get_drvdata (struct device*) ;
 int ssusb_mode_switch (struct ssusb_mtk*,int) ;

__attribute__((used)) static int ssusb_role_sw_set(struct device *dev, enum usb_role role)
{
 struct ssusb_mtk *ssusb = dev_get_drvdata(dev);
 bool to_host = 0;

 if (role == USB_ROLE_HOST)
  to_host = 1;

 if (to_host ^ ssusb->is_host)
  ssusb_mode_switch(ssusb, to_host);

 return 0;
}
