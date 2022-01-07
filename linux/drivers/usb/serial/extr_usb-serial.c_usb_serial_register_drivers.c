
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_driver {struct usb_driver* usb_driver; scalar_t__ reset_resume; } ;
struct TYPE_2__ {int driver; } ;
struct usb_driver {char const* name; int no_dynamic_id; int supports_autosuspend; TYPE_1__ drvwrap; struct usb_device_id const* id_table; int reset_resume; int disconnect; int probe; int resume; int suspend; } ;
struct usb_device_id {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int driver_attach (int *) ;
 int kfree (struct usb_driver*) ;
 struct usb_driver* kzalloc (int,int ) ;
 int usb_deregister (struct usb_driver*) ;
 int usb_register (struct usb_driver*) ;
 int usb_serial_deregister (struct usb_serial_driver* const) ;
 int usb_serial_disconnect ;
 int usb_serial_probe ;
 int usb_serial_register (struct usb_serial_driver* const) ;
 int usb_serial_reset_resume ;
 int usb_serial_resume ;
 int usb_serial_suspend ;

int usb_serial_register_drivers(struct usb_serial_driver *const serial_drivers[],
    const char *name,
    const struct usb_device_id *id_table)
{
 int rc;
 struct usb_driver *udriver;
 struct usb_serial_driver * const *sd;
 udriver = kzalloc(sizeof(*udriver), GFP_KERNEL);
 if (!udriver)
  return -ENOMEM;

 udriver->name = name;
 udriver->no_dynamic_id = 1;
 udriver->supports_autosuspend = 1;
 udriver->suspend = usb_serial_suspend;
 udriver->resume = usb_serial_resume;
 udriver->probe = usb_serial_probe;
 udriver->disconnect = usb_serial_disconnect;


 for (sd = serial_drivers; *sd; ++sd) {
  if ((*sd)->reset_resume) {
   udriver->reset_resume = usb_serial_reset_resume;
   break;
  }
 }

 rc = usb_register(udriver);
 if (rc)
  goto failed_usb_register;

 for (sd = serial_drivers; *sd; ++sd) {
  (*sd)->usb_driver = udriver;
  rc = usb_serial_register(*sd);
  if (rc)
   goto failed;
 }


 udriver->id_table = id_table;
 rc = driver_attach(&udriver->drvwrap.driver);
 return 0;

 failed:
 while (sd-- > serial_drivers)
  usb_serial_deregister(*sd);
 usb_deregister(udriver);
failed_usb_register:
 kfree(udriver);
 return rc;
}
