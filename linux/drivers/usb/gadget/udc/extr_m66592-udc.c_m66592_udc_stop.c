
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct m66592 {int * driver; } ;


 int M66592_INTENB0 ;
 int M66592_URST ;
 int M66592_VBSE ;
 int disable_controller (struct m66592*) ;
 int init_controller (struct m66592*) ;
 int m66592_bclr (struct m66592*,int,int ) ;
 struct m66592* to_m66592 (struct usb_gadget*) ;

__attribute__((used)) static int m66592_udc_stop(struct usb_gadget *g)
{
 struct m66592 *m66592 = to_m66592(g);

 m66592_bclr(m66592, M66592_VBSE | M66592_URST, M66592_INTENB0);

 init_controller(m66592);
 disable_controller(m66592);

 m66592->driver = ((void*)0);

 return 0;
}
