
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* bus_name; struct device* sysdev; struct device* controller; } ;
struct usb_hcd {int speed; char* product_desc; struct hc_driver const* driver; int died_work; int wakeup_work; int rh_timer; TYPE_1__ self; int kref; struct usb_hcd* shared_hcd; struct usb_hcd* primary_hcd; struct usb_hcd* bandwidth_mutex; struct usb_hcd* address0_mutex; } ;
struct hc_driver {int flags; char* product_desc; scalar_t__ hcd_priv_size; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int HCD_MASK ;
 int INIT_WORK (int *,int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct usb_hcd*) ;
 int hcd_died_work ;
 int hcd_resume_work ;
 int kfree (struct usb_hcd*) ;
 void* kmalloc (int,int ) ;
 int kref_init (int *) ;
 struct usb_hcd* kzalloc (scalar_t__,int ) ;
 int mutex_init (struct usb_hcd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rh_timer_func ;
 int timer_setup (int *,int ,int ) ;
 int usb_bus_init (TYPE_1__*) ;
 int usb_port_peer_mutex ;

struct usb_hcd *__usb_create_hcd(const struct hc_driver *driver,
  struct device *sysdev, struct device *dev, const char *bus_name,
  struct usb_hcd *primary_hcd)
{
 struct usb_hcd *hcd;

 hcd = kzalloc(sizeof(*hcd) + driver->hcd_priv_size, GFP_KERNEL);
 if (!hcd)
  return ((void*)0);
 if (primary_hcd == ((void*)0)) {
  hcd->address0_mutex = kmalloc(sizeof(*hcd->address0_mutex),
    GFP_KERNEL);
  if (!hcd->address0_mutex) {
   kfree(hcd);
   dev_dbg(dev, "hcd address0 mutex alloc failed\n");
   return ((void*)0);
  }
  mutex_init(hcd->address0_mutex);
  hcd->bandwidth_mutex = kmalloc(sizeof(*hcd->bandwidth_mutex),
    GFP_KERNEL);
  if (!hcd->bandwidth_mutex) {
   kfree(hcd->address0_mutex);
   kfree(hcd);
   dev_dbg(dev, "hcd bandwidth mutex alloc failed\n");
   return ((void*)0);
  }
  mutex_init(hcd->bandwidth_mutex);
  dev_set_drvdata(dev, hcd);
 } else {
  mutex_lock(&usb_port_peer_mutex);
  hcd->address0_mutex = primary_hcd->address0_mutex;
  hcd->bandwidth_mutex = primary_hcd->bandwidth_mutex;
  hcd->primary_hcd = primary_hcd;
  primary_hcd->primary_hcd = primary_hcd;
  hcd->shared_hcd = primary_hcd;
  primary_hcd->shared_hcd = hcd;
  mutex_unlock(&usb_port_peer_mutex);
 }

 kref_init(&hcd->kref);

 usb_bus_init(&hcd->self);
 hcd->self.controller = dev;
 hcd->self.sysdev = sysdev;
 hcd->self.bus_name = bus_name;

 timer_setup(&hcd->rh_timer, rh_timer_func, 0);




 INIT_WORK(&hcd->died_work, hcd_died_work);

 hcd->driver = driver;
 hcd->speed = driver->flags & HCD_MASK;
 hcd->product_desc = (driver->product_desc) ? driver->product_desc :
   "USB Host Controller";
 return hcd;
}
