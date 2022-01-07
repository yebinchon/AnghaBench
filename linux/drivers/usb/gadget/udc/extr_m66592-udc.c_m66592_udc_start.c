
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct usb_gadget_driver {TYPE_1__ driver; } ;
struct usb_gadget {int dummy; } ;
struct m66592 {int old_vbus; int timer; int scount; struct usb_gadget_driver* driver; } ;


 int M66592_INTENB0 ;
 int M66592_INTSTS0 ;
 int M66592_MAX_SAMPLING ;
 int M66592_URST ;
 int M66592_VBSE ;
 int M66592_VBSTS ;
 scalar_t__ jiffies ;
 int m66592_bset (struct m66592*,int,int ) ;
 int m66592_read (struct m66592*,int ) ;
 int m66592_start_xclock (struct m66592*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct m66592* to_m66592 (struct usb_gadget*) ;

__attribute__((used)) static int m66592_udc_start(struct usb_gadget *g,
  struct usb_gadget_driver *driver)
{
 struct m66592 *m66592 = to_m66592(g);


 driver->driver.bus = ((void*)0);
 m66592->driver = driver;

 m66592_bset(m66592, M66592_VBSE | M66592_URST, M66592_INTENB0);
 if (m66592_read(m66592, M66592_INTSTS0) & M66592_VBSTS) {
  m66592_start_xclock(m66592);

  m66592->old_vbus = m66592_read(m66592,
      M66592_INTSTS0) & M66592_VBSTS;
  m66592->scount = M66592_MAX_SAMPLING;
  mod_timer(&m66592->timer, jiffies + msecs_to_jiffies(50));
 }

 return 0;
}
