
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_prepared; } ;
struct TYPE_5__ {TYPE_1__ power; scalar_t__ driver; } ;
struct usb_interface {TYPE_2__ dev; scalar_t__ needs_binding; } ;


 int EPROBE_DEFER ;
 int dev_warn (TYPE_2__*,char*,int) ;
 int device_attach (TYPE_2__*) ;
 int usb_forced_unbind_intf (struct usb_interface*) ;

__attribute__((used)) static void usb_rebind_intf(struct usb_interface *intf)
{
 int rc;


 if (intf->dev.driver)
  usb_forced_unbind_intf(intf);


 if (!intf->dev.power.is_prepared) {
  intf->needs_binding = 0;
  rc = device_attach(&intf->dev);
  if (rc < 0 && rc != -EPROBE_DEFER)
   dev_warn(&intf->dev, "rebind failed: %d\n", rc);
 }
}
