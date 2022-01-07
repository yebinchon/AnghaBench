
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_role_switch {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct usb_role_switch*) ;
 struct usb_role_switch* to_role_switch (struct device*) ;

__attribute__((used)) static void usb_role_switch_release(struct device *dev)
{
 struct usb_role_switch *sw = to_role_switch(dev);

 kfree(sw);
}
